'use strict';

define('persona/mobile-menu', [
	'pulling/build/pulling-drawer', 'storage', 'alerts', 'search',
], function (
	Pulling, Storage, alerts, search
) {
	const Menu = {};

	Menu.init = function () {
		if (!Pulling) {
			return;
		}

		// initialization
		const panelEl = document.getElementById('panel');
		const menuEl = document.getElementById('menu');
		const chatsMenuEl = document.getElementById('chats-menu');
		if (!menuEl || !chatsMenuEl) {
			return;
		}
		const chatMenuVisible = app.user && parseInt(app.user.uid, 10);
		let swapped = !!Storage.getItem('persona:menus:legacy-layout');
		const margin = window.innerWidth;

		if (swapped) {
			$('#mobile-menu').removeClass('float-start');
			$('#mobile-chats').addClass('float-start');
		}

		if (document.documentElement.getAttribute('data-dir') === 'rtl') {
			swapped = !swapped;
		}

		const navSlideout = Pulling.create({
			panel: panelEl,
			menu: menuEl,
			width: 256,
			margin: margin,
			side: swapped ? 'right' : 'left',
		});
		$('#menu').removeClass('hidden');

		let chatsSlideout;
		if (chatMenuVisible) {
			chatsSlideout = Pulling.create({
				panel: panelEl,
				menu: chatsMenuEl,
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
			if (chatsSlideout) {
				chatsSlideout.close();
			}
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

		if (chatMenuVisible) {
			navSlideout.on('beforeopen', function () {
				chatsSlideout.close();
				chatsSlideout.disable();
			}).on('closed', function () {
				chatsSlideout.enable();
			});
		}

		$('#menu [data-section="navigation"] ul').html(
			$('#main-nav').html() +
			($('#logged-out-menu').html() || '')
		);

		$('#user-control-list').children().clone(true, true).appendTo($('#chats-menu [data-section="profile"] ul'));

		socket.on('event:user_status_change', function (data) {
			if (parseInt(data.uid, 10) === app.user.uid) {
				app.updateUserStatus($('#chats-menu [component="user/status"]'), data.status);
				navSlideout.close();
			}
		});

		// right slideout notifications & chats menu

		function loadNotificationsAndChats() {
			require(['notifications', 'chat'], function (notifications, chat) {
				const notifList = $('#chats-menu [data-section="notifications"] ul');
				notifications.loadNotifications(notifList, function () {
					notifList.find('.deco-none').removeClass('deco-none');
					chat.loadChatsDropdown($('#chats-menu .chat-list'));
				});
			});
		}

		if (chatMenuVisible) {
			$('#mobile-chats').removeClass('hidden').on('click', function () {
				navSlideout.close();
				chatsSlideout.enable().toggle();
			});
			$('#chats-menu').on('click', 'li[data-roomid]', function () {
				chatsSlideout.close();
			});

			chatsSlideout
				.on('opened', loadNotificationsAndChats)
				.on('beforeopen', function () {
					navSlideout.close().disable();
				})
				.on('closed', function () {
					navSlideout.enable();
				});
		}

		const searchInputEl = $('.navbar .navbar-search input[name="term"]');
		const searchButton = $('.navbar .navbar-search button[type="button"]');
		searchButton.off('click').on('click', function () {
			if (!config.loggedIn && !app.user.privileges['search:content']) {
				alerts.alert({
					message: '[[error:search-requires-login]]',
					timeout: 3000,
				});
				ajaxify.go('login');
				return false;
			}

			searchButton.addClass('hidden');
			searchInputEl.removeClass('hidden').focus();
			return false;
		});
		searchInputEl.on('blur', function () {
			searchInputEl.addClass('hidden');
			searchButton.removeClass('hidden');
		});
		search.enableQuickSearch({
			searchElements: {
				inputEl: searchInputEl,
				resultEl: $('.navbar .navbar-search .quick-search-container'),
			},
			searchOptions: {
				in: config.searchDefaultInQuick,
			},
		});
	};

	return Menu;
});
