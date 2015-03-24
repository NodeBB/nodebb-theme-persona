"use strict";

$(document).ready(function() {
	setupSlideMenu();

	function setupSlideMenu() {
		$('[data-toggle="slide-in"]').on('click', function(ev) {
			$('body').toggleClass('slide-in');

			if ($('body').hasClass('slide-in')) {
				var top = ($('html').scrollTop() || $('body').scrollTop()) + $('header-menu').height()

				$('#header-menu').css('transform', 'translate3d(0, ' + top + 'px, 0)');
				$('html').css('overflow-y', 'hidden');
			} else {
				$('body').one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function() {
					$('#header-menu').css('transform', 'none');
					$('html').css('overflow-y', '');
				});
			}
		});
	}
});