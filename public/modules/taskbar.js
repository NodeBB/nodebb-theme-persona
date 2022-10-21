'use strict';

define('persona/taskbar', [
	'hooks',
], function (
	hooks
) {
	const Taskbar = {};

	Taskbar.init = function () {
		hooks.on('filter:taskbar.push', (data) => {
			data.options.className = 'taskbar-' + data.module;
			if (data.module === 'composer') {
				data.options.icon = 'fa-commenting-o';
			} else if (data.module === 'chat') {
				if (data.element.length && !data.element.hasClass('active')) {
					increaseChatCount(data.element);
				}
			}
		});
		hooks.on('action:taskbar.pushed', (data) => {
			if (data.module === 'chat') {
				createChatIcon(data);
				const elData = data.element.data();
				if (elData && elData.options && !elData.options.isSelf) {
					increaseChatCount(data.element);
				}
			}
		});

		socket.on('event:chats.markedAsRead', function (data) {
			$('#taskbar [data-roomid="' + data.roomId + '"]')
				.removeClass('new')
				.attr('data-content', 0);
		});

		function createChatIcon(data) {
			$.getJSON(config.relative_path + '/api/user/' + app.user.userslug + '/chats/' + data.options.roomId, function (chatObj) {
				const el = $('#taskbar [data-uuid="' + data.uuid + '"] a');
				el.parent('[data-uuid]').attr('data-roomId', data.options.roomId);

				if (chatObj.users.length === 1) {
					const user = chatObj.users[0];
					el.find('i').remove();

					if (user.picture) {
						el.css('background-image', 'url(' + user.picture + ')');
						el.css('background-size', 'cover');
					} else {
						el.css('background-color', user['icon:bgColor'])
							.text(user['icon:text'])
							.addClass('avatar');
					}
				}
			});
		}

		function increaseChatCount(el) {
			const count = (parseInt($(el).attr('data-content'), 10) || 0) + 1;
			$(el).attr('data-content', count);
		}
	};

	return Taskbar;
});
