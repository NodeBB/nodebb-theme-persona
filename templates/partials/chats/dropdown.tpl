<!-- IF rooms.length -->
{{{each rooms}}}
<li class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->" data-roomid="{rooms.roomId}">
	<strong class="room-name">
		<!-- IF !rooms.lastUser.uid -->
		<span>[[modules:chat.no-users-in-room]]</span>
		<!-- ELSE -->
		<!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName -->
		<!-- ENDIF !rooms.lastUser.uid -->
	</strong>
	<div class="avatar-placeholder"></div>
	{{{each rooms.users}}}
	<!-- IF @first -->
	<div class="main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	{{{end}}}

	<ul class="members">
		{{{each rooms.users}}}
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		{{{end}}}
	</ul>

	<span class="teaser-content">{rooms.teaser.content}</span>
	<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>
</li>
{{{end}}}
<!-- ELSE -->
<li class="no_active"><a href="#">[[modules:chat.no_active]]</a></li>
<!-- ENDIF rooms.length -->