<!-- IF rooms.length -->
<!-- BEGIN rooms -->
<li class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->" data-roomId="{../roomId}">
	<a data-ajaxify="false">
		<!-- IF lastUser -->
		<!-- IF ../lastUser.picture -->
		<img class="avatar avatar-md avatar-rounded" src="{../lastUser.picture}" title="{../lastUser.username}" />
		<!-- ELSE -->
		<div class="avatar avatar-md avatar-rounded" style="background-color: {../lastUser.icon:bgColor}">{../lastUser.icon:text}</div>
		<!-- ENDIF ../lastUser.picture -->
		<!-- ENDIF lastUser -->
		
		<!-- IF lastUser -->
		{../usernames}
		<!-- ELSE -->
		[[modules:chat.no-users-in-room]]
		<!-- ENDIF lastUser -->
	</a>
</li>
<!-- END rooms -->
<!-- ELSE -->
<li class="no_active"><a href="#">No active chats</a></li>
<!-- ENDIF rooms.length -->