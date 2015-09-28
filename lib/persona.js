"use strict";

/*globals ajaxify, config, utils, NProgress*/

$(document).ready(function() {
	setupNProgress();
	setupTaskbar();
	setupEditedByIcon();
	setupMobileMenu();

	var env = utils.findBootstrapEnvironment();

	if (env === 'xs' || env ==='sm') {
		$(".navbar-fixed-top").autoHidingNavbar({
			showOnBottom: false
		});
	}

	function setupNProgress() {
		$(window).on('action:ajaxify.start', function() {
			NProgress.set(0.7);
		});

		$(window).on('action:ajaxify.end', function() {
			NProgress.done();
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

		function createChatIcon(data) {
			data.options.icon = 'fa-spinner fa-spin';

			$.getJSON(config.relative_path + '/api/user/' + utils.slugify(data.options.title), function(user) {
				var el = $('#taskbar [data-uuid="' + data.uuid + '"] a');
				el.find('i').remove();
				el.css('background-image', 'url(' + user.picture + ')');
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

				icon = el.parents('[data-pid]').find('.edit-icon');
				icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
			});
		}

		$(window).on('action:posts.edited', function(ev, data) {
			var parent = $('[data-pid="' + data.post.pid + '"]'),
				icon = parent.find('.edit-icon'),
				el = parent.find('[component="post/editor"]');

			icon.prop('title', el.text()).tooltip('fixTitle').removeClass('hidden');
		});

		$(window).on('action:topic.loaded', activateEditedTooltips);
		$(window).on('action:posts.loaded', activateEditedTooltips);
	}

	function setupMobileMenu() {
		if (!window.addEventListener) {
			return;
		}

		var slideout = new Slideout({
			'panel': document.getElementById('panel'),
			'menu': document.getElementById('menu'),
			'padding': 256,
			'tolerance': 70,
			'side': 'right'
		});

		$('#mobile-menu').on('click', function() {
			$('#menu').show();
			slideout.toggle();
		});

		$('#menu a').on('click', function() {
			slideout.close();
		});

		$(window).on('resize', function() {
			slideout.close();
		});

		$(window).on('action:ajaxify.start', function() {
			slideout.close();
		});

		function openingMenuAndLoad() {
			openingMenu();
			loadNotificationsAndChat();
		}

		function openingMenu() {
			$('#menu').show();

			$('#header-menu').css({
				'top': $(window).scrollTop() + 'px',
				'position': 'absolute'
			});

			loadNotificationsAndChat();
		}

		function loadNotificationsAndChat() {
			require(['chat', 'notifications'], function(chat, notifications) {
				chat.loadChatsDropdown($('#menu [data-section="chats"] ul'));
				notifications.loadNotifications($('#menu [data-section="notifications"] ul'));
			});
		}

		slideout.on('beforeopen', openingMenuAndLoad);
		slideout.on('open', openingMenuAndLoad);
		slideout.on('translate', openingMenu);

		slideout.on('close', function() {
			$('#header-menu').css({
				'top': '0px',
				'position': 'fixed'
			});
			$('.slideout-open').removeClass('slideout-open');
			$('#menu').hide();
		});

		$('#menu [data-section="navigation"] ul').html($('#main-nav').html() + ($('#logged-out-menu').html() || ''));
		$('#menu [data-section="profile"] ul').html($('#user-control-list').html())
			.find('[component="user/status"]').remove();
	}
});