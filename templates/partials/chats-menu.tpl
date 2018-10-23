<!-- IF config.loggedIn -->
<section class="menu-section" data-section="chats">
	<h3 class="menu-section-title">
		[[global:header.chats]]
		<i class="counter unread-count" component="chat/icon" data-content="{unreadCount.chat}"></i>
	</h3>
	<ul class="menu-section-list chat-list" component="chat/list">
		<a class="navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
	</ul>
</section>
<!-- ENDIF config.loggedIn -->