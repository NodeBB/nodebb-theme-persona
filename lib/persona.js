"use strict";

/*globals ajaxify, config, utils, app, socket, NProgress*/

$(document).ready(function() {
	var env = utils.findBootstrapEnvironment();

	setupNProgress();
	setupTaskbar();
	setupEditedByIcon();
	setupMobileMenu();
	setupQuickReply();

	if (env === 'xs' || env ==='sm') {
		$(".navbar-fixed-top").autoHidingNavbar({
			showOnBottom: false
		});
	}

	function setupNProgress() {
		$(window).on('action:ajaxify.start', function() {
			NProgress.set(0.7);
		});

		$(window).on('action:ajaxify.end', function(ev, data) {
			NProgress.done();
			setupHoverCards();

			if (data.url && data.url.match('^user/.+/chats')) {
				require(['persona/chats'], function(chats) {
					chats.init();
				});
			} else if (data.url && data.url.match('user/')) {
				setupFavouriteButtonOnProfile();
			}
		});
	}

	function setupTaskbar() {
		$(window).on('filter:taskbar.push', function(ev, data) {
			data.options.className = 'taskbar-' + data.module;

			if (data.module === 'composer') {
				data.options.icon = 'fa-plus';
			} else if (data.module === 'chat') {
				if (!data.element.length) {
					createChatIcon(data);
					$(window).one('action:taskbar.pushed', function(ev, data) {
						updateChatCount(data.element);
					});

				} else if (!data.element.hasClass('active')) {
					updateChatCount(data.element);
				}
			}
		});

		socket.on('event:chats.markedAsRead', function(data) {
			$('#taskbar [data-roomId="' + data.roomId + '"]')
				.removeClass('new')
				.attr('data-content', 0);
		});

		function createChatIcon(data) {
			data.options.icon = 'fa-spinner fa-spin';

			$.getJSON(config.relative_path + '/api/user/' + utils.slugify(data.options.title), function(user) {
				var el = $('#taskbar [data-uuid="' + data.uuid + '"] a');
				el.find('i').remove();
				el.parent('[data-uuid]').attr('data-roomId', data.options.roomId);

				if (user.picture) {
					el.css('background-image', 'url(' + user.picture + ')');
				} else {
					el	.css('background-color', user['icon:bgColor'])
						.text(user['icon:text'])
						.addClass('user-icon');
				}
			});
		}

		function updateChatCount(el) {
			var count = (parseInt($(el).attr('data-content'), 10) || 0) + 1;
			$(el).attr('data-content', count);
		}
	}

	function setupEditedByIcon() {
		function activateEditedTooltips() {
			$('[data-pid] [component="post/editor"]').each(function() {
				var el = $(this), icon;

				if (!el.attr('data-editor')) {
					return;
				}

				icon = el.closest('[data-pid]').find('.edit-icon').first();
				icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
			});
		}

		$(window).on('action:posts.edited', function(ev, data) {
			var parent = $('[data-pid="' + data.post.pid + '"]');
			var icon = parent.find('.edit-icon').filter(function (index, el) {
				return parseInt($(el).closest('[data-pid]').attr('data-pid'), 10) === parseInt(data.post.pid, 10);
			});
			var el = parent.find('[component="post/editor"]').first();
			icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
		});

		$(window).on('action:topic.loaded', activateEditedTooltips);
		$(window).on('action:posts.loaded', activateEditedTooltips);
	}

	function setupMobileMenu() {
		if (!window.addEventListener) {
			return;
		}

		var guest = !app.user || !parseInt(app.user.uid, 10);

		require(['slit'], function (Slit) {
			// initialization

			var margin = window.innerWidth * 0.4;

			var slideout = Slit({
				panel: document.getElementById('panel'),
				menu: document.getElementById('menu'),
				width: 256,
				margin: margin,
			});
			$('#menu').removeClass('hidden');

			var chatsSlideout;
			if (!guest) {
				chatsSlideout = Slit({
					panel: document.getElementById('panel'),
					menu: document.getElementById('chats-menu'),
					width: 256,
					margin: margin,
					side: 'right',
				});
				$('#chats-menu').removeClass('hidden');
			}

			// all menus

			function fixPaginator() {
				var paginator = $('.topic .pagination-block')[0];
				if (paginator) {
					paginator.style.bottom = 0; // to trigger reflow
					paginator.style.bottom = (paginator.getBoundingClientRect().bottom - window.innerHeight).toString() + 'px';
				}
			}

			function closeOnClick() {
				slideout.close();
				if (chatsSlideout) { chatsSlideout.close(); }
			}

			function onClose() {
				$('#panel').off('click', closeOnClick);
			}

			$(window).on('resize action:ajaxify.start', function () {
				slideout.close();
				chatsSlideout.close();
				$('.account .cover').css('top', $('[component="navbar"]').height());
			});

			slideout.ignore('code, code *, .preventSlideout, .preventSlideout *');
			slideout.on('closed', onClose);
			slideout.on('opened', function () {
				$('#panel').one('click', closeOnClick);
			});

			if (!guest) {
				chatsSlideout.ignore('code, code *, .preventSlideout, .preventSlideout *');
				chatsSlideout.on('closed', onClose);
				chatsSlideout.on('opened', function () {
					$('#panel').one('click', closeOnClick);
				});
			}

			// left slideout navigation menu

			$('#mobile-menu').on('click', function () {
				slideout.toggle();
			});

			function loadNotifications() {
				require(['notifications'], function(notifications) {
					notifications.loadNotifications($('#menu [data-section="notifications"] ul'));
				});
			}

			slideout.on('opened', loadNotifications);

			if (!guest) {
				slideout.on('beforeopen', function () {
					chatsSlideout.close();
					chatsSlideout.disable();
				});
				slideout.on('closed', function () {
					chatsSlideout.enable();
				});
			}

			$('#menu [data-section="navigation"] ul').html($('#main-nav').html() + ($('#search-menu').html() || '') + ($('#logged-out-menu').html() || ''));

			$('#user-control-list').children().clone(true, true).appendTo($('#menu [data-section="profile"] ul'));
			$('#menu [data-section="profile"] ul').find('[component="user/status"]').remove();

			socket.on('event:user_status_change', function(data) {
				if (parseInt(data.uid, 10) === app.user.uid) {
					app.updateUserStatus($('#menu [component="user/status"]'), data.status);
					slideout.close();
				}
			});

			// right slideout chats menu

			function loadChats() {
				require(['chat'], function (chat) {
					chat.loadChatsDropdown($('#chats-menu .chat-list'));
				});
			}

			if (!guest) {
				$('#mobile-chats').removeClass('hidden').on('click', function() {
					chatsSlideout.toggle();
				});
				$('#chats-menu').on('click', 'li[data-roomid]', function () {
					chatsSlideout.close();
				});

				chatsSlideout.on('opened', loadChats);

				chatsSlideout.on('beforeopen', function () {
					slideout.close();
					slideout.disable();
				});
				chatsSlideout.on('closed', function () {
					slideout.enable();
				});
			}

			// for debugging
			// window.slideout = slideout;
			// window.chatsSlideout = chatsSlideout;
		});
	}

	function setupHoverCards() {
		require(['components'], function(components) {
			components.get('topic')
				.on('click', '[component="user/picture"],[component="user/status"]', generateUserCard);
		});

		$(window).on('action:posts.loading', function(ev, data) {
			for (var i = 0, ii = data.posts.length; i < ii; i++) {
				(ajaxify.data.topics || ajaxify.data.posts)[data.posts[i].index] = data.posts[i];
			}
		});
	}

	function generateUserCard(ev) {
		var avatar = $(this),
			index = avatar.parents('[data-index]').attr('data-index'),
			data = (ajaxify.data.topics || ajaxify.data.posts);

		for (var i = 0, ii = data.length; i < ii; i++) {
			if (parseInt(data[i].index, 10) === parseInt(index, 10)) {
				data = data[i].user;
				break;
			}
		}

		$('.persona-usercard').remove();

		if (parseInt(data.uid, 10) === 0) {
			return false;
		}

		socket.emit('user.isFollowing', {uid: data.uid}, function(err, isFollowing) {
			app.parseAndTranslate('modules/usercard', data, function(html) {
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

				utils.makeNumbersHumanReadable(card.find('.human-readable-number'));
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
				card.fadeOut(function() {
					card.remove();
				});

				$(document).off('click', removeCard);
			}
		}

		$(document).on('click', removeCard);
	}

	function setupFavouriteMorph(parent, uid, username) {
		parent.find('.btn-morph').click(function(ev) {
			var type = $(this).hasClass('plus') ? 'follow' : 'unfollow';

			socket.emit('user.' + type, {uid: uid}, function(err) {
				if (err) {
					return app.alertError(err.message);
				}

				app.alertSuccess('[[global:alert.' + type + ', ' + username + ']]');
			});

			$(this).toggleClass('plus').toggleClass('heart');
			$(this).translateAttr('title', type  === 'follow' ? '[[global:unfollow]]' : '[[global:follow]]');

			if ($(this).find('b.drop').length === 0) {
				$(this).prepend('<b class="drop"></b>');
			}

			var drop = $(this).find('b.drop').removeClass('animate'),
				x = ev.pageX - drop.width() / 2 - $(this).offset().left,
				y = ev.pageY - drop.height() / 2 - $(this).offset().top;

			drop.css({ top: y + 'px', left: x + 'px' }).addClass('animate');
		});
	}

	function setupQuickReply() {
		$(window).on('action:ajaxify.end', function(ev, data) {
			if (data.url && data.url.match('^topic/')) {
				require(['persona/quickreply'], function(quickreply) {
					quickreply.init();
				});
			}
		});
	}
});
