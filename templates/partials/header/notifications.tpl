<a href="{relative_path}/notifications" class="nav-link" data-bs-toggle="dropdown" id="notif_dropdown" data-ajaxify="false" role="button" aria-haspopup="true" aria-expanded="false">
	<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
</a>
<ul class="dropdown-menu dropdown-menu-end p-1" aria-labelledby="notif_dropdown" role="menu">
	<li>
		<ul component="notifications/list" class="notification-list">
			<li class="loading-text">
				<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-divider"></li>
	<li>
		<div class="d-flex justify-content-center gap-1 flex-wrap">
			<a role="button" href="#" class="btn btn-light mark-all-read flex-fill text-nowrap"><i class="fa fa-check-double"></i> [[notifications:mark-all-read]]</a>
			<a class="btn btn-primary flex-fill text-nowrap" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see-all]]</a>
		</div>
	</li>
</ul>