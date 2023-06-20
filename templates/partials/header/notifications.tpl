<a href="{relative_path}/notifications" class="nav-link" data-bs-toggle="dropdown" id="notif_dropdown" data-ajaxify="false" role="button">
	<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
</a>
<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notif_dropdown">
	<li>
		<ul component="notifications/list" class="notification-list">
			<li class="loading-text">
				<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
			</li>
		</ul>
	</li>
	<li class="notif-dropdown-link">
		<div class="btn-group d-flex justify-content-center">
			<a role="button" href="#" class="btn btn-light mark-all-read"><i class="fa fa-check-double"></i> [[notifications:mark_all_read]]</a>
			<a class="btn btn-light" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see_all]]</a>
		</div>
	</li>
</ul>