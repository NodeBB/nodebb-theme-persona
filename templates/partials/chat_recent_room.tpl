<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	<i class="fa fa-times pull-right leave" component="chat/leave"></i>
	<!-- IF rooms.lastUser.uid -->
	<div data-username="{rooms.lastUser.username}" data-uid="{rooms.lastUser.uid}">
		<!-- IF rooms.lastUser.picture -->
		<img class="user-img" src="{rooms.lastUser.picture}">
		<!-- ELSE -->
		<div class="user-icon user-img" style="background-color: {rooms.lastUser.icon:bgColor};">{rooms.lastUser.icon:text}</div>
		<!-- ENDIF rooms.lastUser.picture -->
		<i component="user/status" title="[[global:{rooms.lastUser.status}]]" class="fa fa-circle status {rooms.lastUser.status}"></i>
		<span class="username">{rooms.usernames}</span>
	</div>
	<!-- ELSE -->
	[[modules:chat.no-users-in-room]]
	<!-- ENDIF rooms.lastUser.uid -->

	<span class="teaser-content">{rooms.teaser.content}</span>
	<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>
</li>