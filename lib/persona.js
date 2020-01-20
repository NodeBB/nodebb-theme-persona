"use strict";

/*globals ajaxify, config, utils, app, socket, NProgress*/

$(document).ready(function() {
	setupNProgress();
	setupTaskbar();
	setupEditedByIcon();
	setupMobileMenu();
	setupQuickReply();
	configureNavbarHiding();
	fixHeaderPadding();

	$(window).on('resize', utils.debounce(configureNavbarHiding, 200));
	$(window).on('resize', fixHeaderPadding);

	$(window).on('action:app.loggedIn', function () {
		setupMobileMenu();
	});

	function fixHeaderPadding() {
		var env = utils.findBootstrapEnvironment();
		if (env === 'sm' || env === 'xs' || env === 'md') {
			$('#panel').css('padding-top', $('#header-menu').outerHeight(true));
		} else {
			$('#panel').css('padding-top', $('#header-menu').outerHeight(true) - 70);
		}
	}

	function configureNavbarHiding () {
		var navbarEl = $(".navbar-fixed-top");
		navbarEl.autoHidingNavbar('destroy');
		navbarEl.css('top', '');

		var env = utils.findBootstrapEnvironment();
		if (env === 'xs' || env ==='sm') {
			navbarEl.autoHidingNavbar({
				showOnBottom: false,
			});
		}
	}

	function setupNProgress() {
		$(window).on('action:ajaxify.start', function() {
			NProgress.set(0.7);
		});

		$(window).on('action:ajaxify.end', function(ev, data) {
			NProgress.done();
			setupHoverCards();

			if (data.url && data.url.match('user/')) {
				setupFavouriteButtonOnProfile();
			}
		});
	}

	function setupTaskbar() {
		$(window).on('filter:taskbar.push', function(ev, data) {
			data.options.className = 'taskbar-' + data.module;
			if (data.module === 'composer') {
				data.options.icon = 'fa-commenting-o';
			} else if (data.module === 'chat') {
				if (data.element.length && !data.element.hasClass('active')) {
					increaseChatCount(data.element);
				}
			}
		});
		$(window).on('action:taskbar.pushed', function(ev, data) {
			if (data.module === 'chat') {
				createChatIcon(data);
				var elData = data.element.data();
				if (elData && elData.options && !elData.options.isSelf) {
					increaseChatCount(data.element);
				}
			}
		});

		socket.on('event:chats.markedAsRead', function(data) {
			$('#taskbar [data-roomid="' + data.roomId + '"]')
				.removeClass('new')
				.attr('data-content', 0);
		});

		function createChatIcon(data) {
			$.getJSON(config.relative_path + '/api/user/' + app.user.userslug + '/chats/' + data.options.roomId, function(chatObj) {
				var el = $('#taskbar [data-uuid="' + data.uuid + '"] a');
				el.parent('[data-uuid]').attr('data-roomId', data.options.roomId);

				if (chatObj.users.length === 1) {
					var user = chatObj.users[0];
					el.find('i').remove();

					if (user.picture) {
						el.css('background-image', 'url(' + user.picture + ')');
						el.css('background-size', 'cover');
					} else {
						el	.css('background-color', user['icon:bgColor'])
							.text(user['icon:text'])
							.addClass('user-icon');
					}
				}
			});
		}

		function increaseChatCount(el) {
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


		require(['pulling', 'storage'], function (Pulling, Storage) {
			// initialization

			var chatMenuVisible = !config.disableChat && app.user && parseInt(app.user.uid, 10);
			var swapped = !!Storage.getItem('persona:menus:legacy-layout');
			var margin = window.innerWidth;

			if (swapped) {
				$('#mobile-menu').removeClass('pull-left');
				$('#mobile-chats').addClass('pull-left');
			}

			if (document.documentElement.getAttribute('data-dir') === 'rtl') {
				swapped = !swapped;
			}

			var navSlideout = Pulling.create({
				panel: document.getElementById('panel'),
				menu: document.getElementById('menu'),
				width: 256,
				margin: margin,
				side: swapped ? 'right' : 'left',
			});
			$('#menu').removeClass('hidden');

			var chatsSlideout;
			if (chatMenuVisible) {
				chatsSlideout = Pulling.create({
					panel: document.getElementById('panel'),
					menu: document.getElementById('chats-menu'),
					width: 256,
					margin: margin,
					side: swapped ? 'left' : 'right',
				});
				$('#chats-menu').removeClass('hidden');
			}

			// all menus

			function closeOnClick() {
				navSlideout.close();
				if (chatsSlideout) { chatsSlideout.close(); }
			}

			function onBeforeOpen() {
				document.documentElement.classList.add('slideout-open');
			}

			function onClose() {
				$('#mobile-menu').blur();
				document.documentElement.classList.remove('slideout-open');
				$('#panel').off('click', closeOnClick);
			}

			$(window).on('resize action:ajaxify.start', function () {
				navSlideout.close();
				if (chatsSlideout) { chatsSlideout.close(); }
				$('.account .cover').css('top', $('[component="navbar"]').height());
			});

			navSlideout
				.ignore('code, code *, .preventSlideout, .preventSlideout *')
				.on('closed', onClose)
				.on('beforeopen', onBeforeOpen)
				.on('opened', function () {
					$('#panel').one('click', closeOnClick);
				});

			if (chatMenuVisible) {
				chatsSlideout
					.ignore('code, code *, .preventSlideout, .preventSlideout *')
					.on('closed', onClose)
					.on('beforeopen', onBeforeOpen)
					.on('opened', function () {
						$('#panel').one('click', closeOnClick);
					});
			}

			// left slideout navigation menu

			$('#mobile-menu').on('click', function () {
				navSlideout.enable().toggle();
			});

			// Handle sidebar clicks while page still loading
			if (document.getElementById('mobile-menu') === document.activeElement) {
				navSlideout.enable().toggle();
			}

			function loadNotifications() {
				require(['notifications'], function(notifications) {
					notifications.loadNotifications($('#menu [data-section="notifications"] ul'));
				});
			}

			navSlideout.on('opened', loadNotifications);

			if (chatMenuVisible) {
				navSlideout.on('beforeopen', function () {
					chatsSlideout.close();
					chatsSlideout.disable();
				}).on('closed', function () {
					chatsSlideout.enable();
				});
			}

			$('#menu [data-section="navigation"] ul').html($('#main-nav').html() + ($('#search-menu').html() || '') + ($('#logged-out-menu').html() || ''));

			$('#user-control-list').children().clone(true, true).appendTo($('#menu [data-section="profile"] ul'));

			socket.on('event:user_status_change', function(data) {
				if (parseInt(data.uid, 10) === app.user.uid) {
					app.updateUserStatus($('#menu [component="user/status"]'), data.status);
					navSlideout.close();
				}
			});

			// right slideout chats menu

			function loadChats() {
				require(['chat'], function (chat) {
					chat.loadChatsDropdown($('#chats-menu .chat-list'));
				});
			}

			if (chatMenuVisible) {
				$('#mobile-chats').removeClass('hidden').on('click', function() {
					navSlideout.close();
					chatsSlideout.enable().toggle();
				});
				$('#chats-menu').on('click', 'li[data-roomid]', function () {
					chatsSlideout.close();
				});

				chatsSlideout
					.on('opened', loadChats)
					.on('beforeopen', function () {
						navSlideout.close().disable();
					})
					.on('closed', function () {
						navSlideout.enable();
					});
			}

			// add a checkbox in the user settings page
			// so users can swap the sides the menus appear on

			function setupSetting() {
				if (ajaxify.data.template['account/settings'] && !document.getElementById('persona:menus:legacy-layout')) {
					require(['translator'], function (translator) {
						translator.translate('[[persona:mobile-menu-side]]', function (translated) {
							$('<div class="well checkbox"><label><input type="checkbox" id="persona:menus:legacy-layout"/><strong>' + translated + '</strong></label></div>')
								.appendTo('#content .account > .row > div:first-child')
								.find('input')
								.prop('checked', Storage.getItem('persona:menus:legacy-layout', 'true'))
								.change(function (e) {
									if (e.target.checked) {
										Storage.setItem('persona:menus:legacy-layout', 'true');
									} else {
										Storage.removeItem('persona:menus:legacy-layout');
									}
								});
						});
					})
				}
			}

			$(window).on('action:ajaxify.end', setupSetting);
			setupSetting();
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

			drop.css({top: y + 'px', left: x + 'px'}).addClass('animate');
		});
	}

	function setupQuickReply() {
		$(window).on('action:ajaxify.end', function(ev, data) {
			if (data.url && data.url.match('^topic/') && config.enableQuickReply) {
				require(['persona/quickreply'], function(quickreply) {
					quickreply.init();
				});
			}
		});
	}
});
