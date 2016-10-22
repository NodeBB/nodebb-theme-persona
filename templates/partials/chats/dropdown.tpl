<!-- IF rooms.length -->
<!-- BEGIN rooms -->
<li class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->" data-roomid="{rooms.roomId}">
	<a data-ajaxify="false"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></a>

	<ul class="members">
		<!-- BEGIN rooms.users -->
		<li>
			<a href="{config.relative_path}/user/{rooms.users.userslug}" class="user-link">
				<!-- IF rooms.users.picture -->
				<img class="user-img avatar avatar-sm avatar-rounded" src="{rooms.users.picture}" title="{rooms.users.username}">
				<!-- ELSE -->
				<div class="user-img avatar avatar-sm avatar-rounded" title="{rooms.users.username}" style="background-color: {rooms.users.icon:bgColor};">{rooms.users.icon:text}</div>
				<!-- ENDIF rooms.users.picture -->
			</a>
		</li>
		<!-- END rooms.users -->
		<!-- IF !rooms.lastUser.uid -->
		<li>[[modules:chat.no-users-in-room]]</li>
		<!-- ENDIF !rooms.lastUser.uid -->
	</ul>


</li>
<!-- END rooms -->
<!-- ELSE -->
<li class="no_active"><a href="#">No active chats</a></li>
<!-- ENDIF rooms.length -->