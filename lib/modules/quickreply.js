"use strict";

/*globals $, app, ajaxify, socket*/

define('persona/quickreply', ['components', 'composer/autocomplete'], function(components, autocomplete) {
	var QuickReply = {};

	QuickReply.init = function() {

		var element = components.get('topic/quickreply/text');
		var data = {
			element: element,
			strategies: [],
			options: {
				style: {
					'z-index': 100,
				}
				// listPosition: function(position) {
				// 	this.$el.css(this._applyPlacement(position));
				// this.$el.css('position', 'absolute');
				// return this;
				// }
			}
		};

		$(window).trigger('composer:autocomplete:init', data);
		autocomplete._active['persona_qr'] = autocomplete.setup(data);
		// data.element.textcomplete(data.strategies, data.options);
		// $('.textcomplete-wrapper').css('height', '100%').find('textarea').css('height', '100%');

		components.get('topic/quickreply/button').on('click', function(e) {
			e.preventDefault();
			var replyMsg = components.get('topic/quickreply/text').val();
			var replyData = {
				tid: ajaxify.data.tid,
				handle: undefined,
				content: replyMsg
			};

			socket.emit('posts.reply', replyData, function(err, data) {
				if (err) {
					app.alertError(err.message);
				}
				if (data && data.queued) {
					app.alertSuccess(data.message);
				}

				components.get('topic/quickreply/text').val('');
				autocomplete._active['persona_qr'].hide();
			});
		});
	};

	return QuickReply;
});
