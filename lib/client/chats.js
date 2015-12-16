define('persona/chats', ['components', 'forum/chats'], function(components, coreChats) {
	var Chats = {};

	Chats.init = function() {
		components.get('chat/recent').off('click').on('click', 'li', function(e) {
			var env = utils.findBootstrapEnvironment();
			if (env === 'xs' || env === 'sm') {
				app.openChat($(this).attr('data-username'), $(this).attr('data-uid'));
			} else {
				coreChats.switchChat(parseInt($(this).attr('data-uid'), 10), $(this).attr('data-username'));
			}
		});
	};

	return Chats;
});