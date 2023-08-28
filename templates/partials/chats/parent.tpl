<div class="d-flex ms-4 mb-2 align-items-center">
	<div component="chat/message/parent" data-parent-mid="{messages.parent.mid}" data-uid="{messages.parent.fromuid}" class="btn btn-sm btn-light align-items-start d-flex flex-row gap-2 text-start w-100">
		<div class="d-flex gap-2 text-sm text-nowrap">
			<div><i class="fa fa-sm fa-reply opacity-50"></i></div>
			<a href="{config.relative_path}/user/{messages.parent.user.userslug}" class="text-decoration-none lh-sm">{buildAvatar(messages.parent.user, "14px", true, "not-responsive")}</a>
			<a class="chat-user fw-semibold" href="{config.relative_path}/user/{messages.parent.user.userslug}">{messages.parent.user.displayname}</a>
			<span class="chat-timestamp text-muted timeago text-nowrap hidden" title="{messages.parent.timestampISO}"></span>
		</div>
		<div component="chat/message/parent/content" class="text-muted line-clamp-1 text-sm w-100">{messages.parent.content}</div>
	</div>
</div>