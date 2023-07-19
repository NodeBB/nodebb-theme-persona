'use strict';

$(document).ready(function () {
	setupNProgress();
	setupTaskbar();
	setupEditedByIcon();
	setupMobileMenu();
	configureNavbarHiding();

	$(window).on('resize', utils.debounce(configureNavbarHiding, 200));
	$(window).on('resize', updatePanelOffset);

	function updatePanelOffset() {
		const header = document.getElementById('header-menu');

		if (!header) {
			console.warn('[persona/updatePanelOffset] Could not find #header-menu, panel offset unchanged.');
			return;
		}

		const rect = header.getBoundingClientRect();
		const offset = Math.max(0, rect.bottom);
		document.documentElement.style.setProperty('--panel-offset', `${offset}px`);
	}

	var lastBSEnv = '';
	function configureNavbarHiding() {
		if (!$.fn.autoHidingNavbar) {
			return;
		}

		require(['hooks', 'storage'], (hooks, Storage) => {
			let preference = ['xs', 'sm'];

			try {
				preference = JSON.parse(Storage.getItem('persona:navbar:autohide')) || preference;
			} catch (e) {
				console.warn('[persona/settings] Unable to parse value for navbar autohiding');
			}
			var env = utils.findBootstrapEnvironment();
			// if env didn't change don't destroy and recreate
			if (env === lastBSEnv) {
				return;
			}
			lastBSEnv = env;
			var navbarEl = $('[component="navbar"]');
			navbarEl.autoHidingNavbar('destroy').removeData('plugin_autoHidingNavbar');
			navbarEl.css('top', '');

			hooks
				.on('filter:navigator.scroll', (data) => {
					navbarEl.autoHidingNavbar('setDisableAutohide', true);
					return data;
				})
				.on('action:navigator.scrolled', () => {
					navbarEl.autoHidingNavbar('setDisableAutohide', false);
				});

			hooks.fire('filter:persona.configureNavbarHiding', {
				resizeEnvs: preference,
			}).then(({ resizeEnvs }) => {
				if (resizeEnvs.includes(env)) {
					navbarEl.autoHidingNavbar({
						showOnBottom: false,
					});
				}

				function fixTopCss(topValue) {
					if (ajaxify.data.template.topic) {
						$('.topic .topic-header').css({ top: topValue });
					} else {
						var topicListHeader = $('.topic-list-header');
						if (topicListHeader.length) {
							topicListHeader.css({ top: topValue });
						}
					}
				}

				navbarEl.off('show.autoHidingNavbar')
					.on('show.autoHidingNavbar', function () {
						fixTopCss('');
					});

				navbarEl.off('hide.autoHidingNavbar')
					.on('hide.autoHidingNavbar', function () {
						fixTopCss('0px');
					});
			});
		});
	}

	function setupNProgress() {
		require(['nprogress'], function (NProgress) {
			if (typeof NProgress === 'undefined') {
				return;
			}

			$(window).on('action:ajaxify.start', function () {
				NProgress.set(0.7);
			});

			$(window).on('action:ajaxify.end', function (ev, data) {
				NProgress.done();
				setupHoverCards();

				if (data.url && data.url.match('user/')) {
					setupFavouriteButtonOnProfile();
				}
			});
		});
	}

	function setupTaskbar() {
		require(['persona/taskbar'], function (taskbar) {
			taskbar.init();
		});
	}

	function setupEditedByIcon() {
		function activateEditedTooltips() {
			$('[data-pid] [component="post/editor"]').each(function () {
				var el = $(this);
				var icon;

				if (!el.attr('data-editor')) {
					return;
				}

				icon = el.closest('[data-pid]').find('.edit-icon').first();
				icon.prop('title', el.text()).tooltip().removeClass('hidden');
			});
		}

		$(window).on('action:posts.edited', function (ev, data) {
			var parent = $('[data-pid="' + data.post.pid + '"]');
			var icon = parent.find('.edit-icon').filter(function (index, el) {
				return parseInt($(el).closest('[data-pid]').attr('data-pid'), 10) === parseInt(data.post.pid, 10);
			});
			var el = parent.find('[component="post/editor"]').first();
			icon.prop('title', el.text()).tooltip().removeClass('hidden');
		});

		$(window).on('action:topic.loaded', activateEditedTooltips);
		$(window).on('action:posts.loaded', activateEditedTooltips);
	}

	function setupMobileMenu() {
		require(['persona/mobile-menu'], function (mobileMenu) {
			mobileMenu.init();
		});
	}

	function setupHoverCards() {
		require(['components'], function (components) {
			components.get('topic')
				.on('click', '[component="user/picture"],[component="user/status"]', generateUserCard);
		});

		$(window).on('action:posts.loading', function (ev, data) {
			for (var i = 0, ii = data.posts.length; i < ii; i++) {
				(ajaxify.data.topics || ajaxify.data.posts)[data.posts[i].index] = data.posts[i];
			}
		});
	}

	function generateUserCard(ev) {
		var avatar = $(this);
		var uid = avatar.parents('[data-uid]').attr('data-uid');
		var data = (ajaxify.data.topics || ajaxify.data.posts);

		for (var i = 0, ii = data.length; i < ii; i++) {
			if (parseInt(data[i].uid, 10) === parseInt(uid, 10)) {
				data = data[i].user;
				break;
			}
		}

		$('.persona-usercard').remove();

		if (parseInt(data.uid, 10) === 0) {
			return false;
		}

		socket.emit('user.isFollowing', { uid: data.uid }, function (err, isFollowing) {
			if (err) {
				return err;
			}

			app.parseAndTranslate('modules/usercard', data, function (html) {
				var card = $(html);
				avatar.parents('a').after(card.hide());

				if (parseInt(app.user.uid, 10) === parseInt(data.uid, 10) || !app.user.uid) {
					card.find('.btn-morph').hide();
				} else {
					setupFavouriteMorph(card, data.uid, data.username);

					if (isFollowing) {
						$('.btn-morph').addClass('heart');
					} else {
						$('.btn-morph').addClass('plus');
					}
				}

				setupCardRemoval(card);
				card.fadeIn();
			});
		});

		ev.preventDefault();
		return false;
	}

	function setupFavouriteButtonOnProfile() {
		setupFavouriteMorph($('[component="account/cover"]'), ajaxify.data.uid, ajaxify.data.username);
	}

	function setupCardRemoval(card) {
		function removeCard(ev) {
			if ($(ev.target).closest('.persona-usercard').length === 0) {
				card.fadeOut(function () {
					card.remove();
				});

				$(document).off('click', removeCard);
			}
		}

		$(document).on('click', removeCard);
	}

	function setupFavouriteMorph(parent, uid, username) {
		require(['api', 'alerts'], function (api, alerts) {
			parent.find('.btn-morph').click(function (ev) {
				var type = $(this).hasClass('plus') ? 'follow' : 'unfollow';
				var method = $(this).hasClass('plus') ? 'put' : 'del';

				api[method]('/users/' + uid + '/follow').then(() => {
					alerts.success('[[global:alert.' + type + ', ' + username + ']]');
				});

				$(this).toggleClass('plus').toggleClass('heart');
				$(this).translateAttr('title', type === 'follow' ? '[[global:unfollow]]' : '[[global:follow]]');

				if ($(this).find('b.drop').length === 0) {
					$(this).prepend('<b class="drop"></b>');
				}

				var drop = $(this).find('b.drop').removeClass('animate');
				var x = ev.pageX - (drop.width() / 2) - $(this).offset().left;
				var y = ev.pageY - (drop.height() / 2) - $(this).offset().top;

				drop.css({ top: y + 'px', left: x + 'px' }).addClass('animate');
			});
		});
	}
});
