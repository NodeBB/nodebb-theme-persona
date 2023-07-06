<div component="chat/user/list" class="border-start hidden d-flex flex-column gap-2 p-1 overflow-auto" style="min-width:240px; width: 240px;">
	{{{ each users }}}
	<a data-index="{./index}" class="btn btn-sm btn-light d-flex justify-content-start text-start align-items-center gap-2" href="{config.relative_path}/uid/{./uid}"><div>{buildAvatar(users, "24px", true)}</div> <span class="flex-grow-1 text-truncate">{./username}</span></a>
	{{{ end }}}
</div>