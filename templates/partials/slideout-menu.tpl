<div class="menu-profile">
	<!-- IF user.uid -->
	{buildAvatar(user, "lg", true, "user-icon")}
	<i data-component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
	<!-- ENDIF user.uid -->
</div>

<section class="menu-section" data-section="navigation">
	<h3 class="menu-section-title">[[global:header.navigation]]</h3>
	<ul class="menu-section-list"></ul>
</section>

<!-- IF config.loggedIn -->
<section class="menu-section" data-section="profile">
	<h3 class="menu-section-title">[[global:header.profile]]</h3>
	<ul class="menu-section-list" data-component="header/usercontrol"></ul>
</section>

<section class="menu-section" data-section="notifications">
	<h3 class="menu-section-title">
		[[global:header.notifications]]
		<span class="counter unread-count" data-component="notifications/icon" data-content="{unreadCount.notification}"></span>
	</h3>
	<ul class="menu-section-list notification-list-mobile" data-component="notifications/list"></ul>
	<p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see-all]]</a></p>
</section>
<!-- ENDIF config.loggedIn -->