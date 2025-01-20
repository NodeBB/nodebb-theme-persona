{{{ if config.loggedIn }}}
<ul class="nav nav-pills">
	<li class="nav-item">
		<a class="nav-link text-decoration-none" href="#" data-bs-target="#notifications" data-bs-toggle="tab"><span class="counter unread-count" component="notifications/icon" data-content="{unreadCount.notification}"></span> <i class="fa fa-fw fa-bell"></i></a>
	</li>
	{{{ if !config.disableChat }}}
	<li class="nav-item">
		<a class="nav-link text-decoration-none" href="#" data-bs-target="#chats" data-bs-toggle="tab"><i class="counter unread-count" component="chat/icon" data-content="{unreadCount.chat}"></i> <i class="fa fa-fw fa-comment"></i></a>
	</li>
	{{{ end }}}
	<li class="nav-item">
		<a class="nav-link active text-decoration-none" href="#" data-bs-target="#profile" data-bs-toggle="tab">
			{buildAvatar(user, "24px", true, "user-icon")}
		</a>
	</li>
</ul>

<div class="tab-content">
	<div class="tab-pane fade show active" id="profile">
		<section class="menu-section" data-section="profile">
			<ul class="menu-section-list dropdown-menu show text-bg-dark w-100 border-0" component="header/usercontrol"></ul>
		</section>
	</div>
	<div class="tab-pane fade" id="notifications">
		<section class="menu-section text-bg-dark px-1" data-section="notifications">
			<ul class="menu-section-list notification-list-mobile list-unstyled" component="notifications/list"></ul>
			<div class="menu-section-list text-center p-3"><a href="{relative_path}/notifications">[[notifications:see-all]]</a></div>
		</section>
	</div>
	{{{ if !config.disableChat }}}
	<div class="tab-pane fade" id="chats">
		<section class="menu-section text-bg-dark px-1" data-section="chats">
			<ul class="menu-section-list chat-list list-unstyled" component="chat/list">

			</ul>
			<div class="menu-section-list text-center p-3"><a class="navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see-all]]</a></div>
		</section>
	</div>
	{{{ end }}}
</div>
{{{ end }}}