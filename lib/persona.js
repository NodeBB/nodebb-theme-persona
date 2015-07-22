"use strict";

/*globals ajaxify, config, utils, NProgress*/

$(document).ready(function() {
	setupSlideMenu();
	setupEditedByIcon();
	setupPaginator();

	var env = utils.findBootstrapEnvironment();

	if (env === 'xs' || env ==='sm') {
		$(".navbar-fixed-top").autoHidingNavbar({
			showOnBottom: false
		});
	}

	function setupSlideMenu() {
		$('[data-toggle="slide-in"]').on('click', function(ev) {
			$('body').toggleClass('slide-in');

			if ($('body').hasClass('slide-in')) {
				var top = ($('html').scrollTop() || $('body').scrollTop()) + $('header-menu').height(),
					transform = 'translate3d(0, ' + top + 'px, 0)';

				$('#header-menu').css({
					'-webkit-transform': transform,
					'-moz-transform': transform,
					'-ms-transform': transform,
					'-o-transform': transform,
					'transform': transform
				});

				$('html').css('overflow-y', 'hidden');
			} else {
				$('body').one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function() {
					$('#header-menu').css({
						'-webkit-transform': 'none',
						'-moz-transform': 'none',
						'-ms-transform': 'none',
						'-o-transform': 'none',
						'transform': 'none'
					});

					$('html').css('overflow-y', '');
				});
			}
		});

		$(window).on('action:ajaxify.start', function() {
			if ($('body').hasClass('slide-in')) {
				$('.navbar-header button').click();
			}

			NProgress.set(0.7);
		});

		$(window).on('action:ajaxify.end', function() {
			NProgress.done();
		});

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

	function setupPaginator() {
		function appendPageNumber(ev, data) {
			var el = data.after ? data.after : data.before,
				page = Math.ceil((el.attr('data-index') - 1) / config.postsPerPage),
				handle = $('<div class="page-number pointer">' + page + '</div>'),
				shadow = $('<div class="shadow"></div>');

			el.append(handle);
			el.append(shadow);

			handle.tooltip({
				title: 'Slide to paginate',
				placement: 'auto left'
			});

			var dragging = false, originalX = 0, toPage = page;
			handle.on('touchstart', function(ev) {
				dragging = true;
				originalX = ev.originalEvent.touches[0].clientX;
			});

			$('#content').on('touchend', function() {
				if (dragging === true) {
					dragging = false;
					if (page !== toPage) {
						ajaxify.go('topic/' + ajaxify.data.slug + '/' + (toPage * config.postsPerPage));
					}

					shadow.removeClass('active');
				}
			});

			$('#content').on('touchmove', function(ev) {
				if (!dragging) {
					return;
				}

				var distance = ev.originalEvent.touches[0].clientX - originalX,
					handlePos = parseInt(handle.css('left'), 10),
					postWidth = handle.parents('[component="post"]').width();
				
				toPage = Math.ceil((handlePos + distance) / postWidth * ajaxify.data.pageCount);

				if (toPage >= ajaxify.data.pageCount) {
					toPage = (ajaxify.data.pageCount - 1);
				}

				if (toPage < 0) {
					toPage = 0;
				}

				if (parseInt(handle.html(), 10) !== toPage) {
					handle.html(toPage);
					handle.removeClass('animated');
					setTimeout(function() { handle.addClass('animated');}, 10);
				}

				shadow.addClass('active');
				shadow.css('left', toPage / ajaxify.data.pageCount * postWidth + 'px');
			});

			handle.css('left', page / ajaxify.data.pageCount * handle.parents('[component="post"]').width() + 'px');
		}

		$(window).on('action:posts.loading', appendPageNumber);
	}


});