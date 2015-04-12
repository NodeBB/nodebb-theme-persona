"use strict";

$(document).ready(function() {
	setupSlideMenu();

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
		});
	}


});