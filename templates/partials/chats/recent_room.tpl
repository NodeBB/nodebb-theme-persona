<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	{{{each rooms.users}}}
	<!-- IF @first -->
	<div class="main-avatar me-2">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	{{{end}}}

	{{{ if rooms.users.length }}}
	<ul class="members">
		{{{each rooms.users}}}
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		{{{end}}}
	</ul>
	{{{ end }}}

	<div class="notification-chat-content flex-grow-1">
		<div component="chat/room/title" class="room-name fw-semibold">
			{{{ if ./roomName}}}
			{./roomName}
			{{{ else }}}
				{{{ if !./lastUser.uid }}}
				<div class="p-3 text-center h-100">
					<span>[[modules:chat.no-users-in-room]]</span>
				</div>
				{{{ else }}}
				{./usernames}
				{{{ end  }}}
			{{{ end }}}
		</div>
	</div>
</li>