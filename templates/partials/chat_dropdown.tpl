<!-- IF rooms.length -->
<!-- BEGIN rooms -->
<li class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->">
	<a data-ajaxify="false" data-roomid="{rooms.roomId}">
		<p>{rooms.roomName}</p>
	</a>

	<!-- BEGIN rooms.users -->
	<a href="{config.relative_path}/user/{rooms.users.userslug}" class="user-link">
		<!-- IF rooms.users.picture -->
		<img class="user-img avatar avatar-sm avatar-rounded" src="{rooms.users.picture}" title="{rooms.users.username}">
		<!-- ELSE -->
		<div class="user-img avatar avatar-sm avatar-rounded" title="{rooms.users.username}" style="background-color: {rooms.users.icon:bgColor};">{rooms.users.icon:text}</div>
		<!-- ENDIF rooms.users.picture -->
	</a>
	<!-- END rooms.users -->
	<!-- IF !rooms.lastUser.uid -->
	[[modules:chat.no-users-in-room]]
	<!-- ENDIF !rooms.lastUser.uid -->


</li>
<!-- END rooms -->
<!-- ELSE -->
<li class="no_active"><a href="#">No active chats</a></li>
<!-- ENDIF rooms.length -->