<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	<strong class="room-name">
		<!-- IF !rooms.lastUser.uid -->
		<span>[[modules:chat.no-users-in-room]]</span>
		<!-- ELSE -->
		<span component="chat/title"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></span>
		<!-- ENDIF !rooms.lastUser.uid -->
	</strong>
	<div class="avatar-placeholder"></div>
	<!-- BEGIN rooms.users -->
	<!-- IF @first -->
	<div class="main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	<!-- END rooms.users -->

	<ul class="members">
		<!-- BEGIN rooms.users -->
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		<!-- END rooms.users -->
	</ul>
</li>