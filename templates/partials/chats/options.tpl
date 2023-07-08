<div class="d-flex gap-1 align-items-stretch">
	<div class="dropdown d-flex">
		<button class="btn btn-sm btn-light" data-bs-toggle="dropdown" component="chat/controlsToggle">
			<i class="fa fa-gear text-muted"></i>
		</button>
		<ul class="dropdown-menu dropdown-menu-end p-1 text-sm" component="chat/controls">
			<li class="dropdown-header">[[modules:chat.options]]</li>
			<li>
				<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="members">
					<i class="fa fa-fw text-muted fa-cog"></i> [[modules:chat.manage-room]]
				</a>
			</li>
			{{{ if isOwner }}}
			<li>
				<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="rename">
					<i class="fa fa-fw text-muted fa-edit"></i> [[modules:chat.rename-room]]
				</a>
			</li>
			{{{ end }}}
			<li>
				<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="leave">
					<i class="fa fa-fw text-muted fa-sign-out"></i> [[modules:chat.leave-room]]
				</a>
			</li>
			{{{ if (public && isAdmin) }}}
			<li>
				<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="delete">
					<i class="fa fa-fw text-danger fa-trash"></i> [[modules:chat.delete-room]]
				</a>
			</li>
			{{{ end }}}
		</ul>
	</div>

	{{{ if users.length }}}
	<div component="chat/user/list/btn" class="btn btn-sm btn-light d-none d-lg-flex flex-nowrap gap-3 align-items-center" title="[[modules:chat.view-users-list]]" data-bs-toggle="tooltip" data-bs-placement="bottom">
		<div class="d-flex text-nowrap">
			{{{ if ./users.0 }}}
			<span style="width: 18px; z-index: 3;" class="text-decoration-none" href="{config.relative_path}/user/{./users.0.userslug}">{buildAvatar(./users.0, "24px", true)}</span>
			{{{ end }}}
			{{{ if ./users.1 }}}
			<span style="width: 18px; z-index: 2;" class="text-decoration-none" href="{config.relative_path}/user/{./users.1.userslug}">{buildAvatar(./users.1, "24px", true)}</span>
			{{{ end }}}
			{{{ if ./users.2 }}}
			<span style="width: 18px; z-index: 1;" class="text-decoration-none" href="{config.relative_path}/user/{./users.2.userslug}">{buildAvatar(./users.2, "24px", true)}</span>
			{{{ end }}}
		</div>
		{./userCount}
	</div>
	{{{ end }}}
</div>
