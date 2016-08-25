<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	<i class="fa fa-times pull-right leave" component="chat/leave"></i>
	<div>
		<p>{rooms.roomName}</p>
		<!-- BEGIN rooms.users -->
			<!-- IF rooms.users.picture -->
			<img class="user-img avatar avatar-sm avatar-rounded" src="{rooms.users.picture}" title="{rooms.users.username}">
			<!-- ELSE -->
			<div class="user-img avatar avatar-sm avatar-rounded" title="{rooms.users.username}" style="background-color: {rooms.users.icon:bgColor};">{rooms.users.icon:text}</div>
			<!-- ENDIF rooms.users.picture -->
		<!-- END rooms.users -->
		<!-- IF !rooms.lastUser.uid -->
		[[modules:chat.no-users-in-room]]
		<!-- ENDIF !rooms.lastUser.uid -->
	</div>

	<span class="teaser-content">{rooms.teaser.content}</span>
	<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>
</li>