<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link d-flex gap-2 justify-content-between align-items-center position-relative" aria-haspopup="true" aria-expanded="false" aria-label="[[global:header.notifications]]">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
			<span component="notifications/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
		</span>
	</span>
	<span component="notifications/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
</a>

<ul class="notifications-dropdown dropdown-menu dropdown-menu-end p-1 shadow" role="menu">
	<li>
		<div component="notifications/list" class="list-container notification-list overscroll-behavior-contain pe-1 ff-base ghost-scrollbar">
			<div class="mb-2 p-1">
				<div class="d-flex gap-1 justify-content-between">
					<div class="d-flex gap-2 flex-grow-1 placeholder-wave">
						<div class="placeholder" style="width: 32px; height: 32px;"></div>
						<div class="flex-grow-1">
							<div class="d-flex flex-column">
								<div class="text-sm">
									<span class="placeholder placeholder-sm col-4"></span>
									<span class="placeholder placeholder-sm col-6"></span>
									<span class="placeholder placeholder-sm col-7"></span>
									<span class="placeholder placeholder-sm col-2"></span>
									<span class="placeholder placeholder-sm col-5"></span>
								</div>
								<div class="text-xs">
									<div class="placeholder placeholder-xs col-6"></div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<button class="mark-read btn btn-ghost btn-sm d-flex align-items-center justify-content-center flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
							<i class="unread fa fa-2xs fa-circle text-primary"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</li>
	<li class="dropdown-divider"></li>
	<li>
		<div class="d-flex justify-content-center gap-1 flex-wrap">
			<a role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap text-truncate ff-secondary"><i class="fa fa-check-double"></i> [[notifications:mark-all-read]]</a>
			<a class="btn btn-sm btn-primary flex-fill text-nowrap text-truncate ff-secondary" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see-all]]</a>
		</div>
	</li>
</ul>
