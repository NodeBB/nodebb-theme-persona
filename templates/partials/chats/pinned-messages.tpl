<div component="chat/messages/pinned/container" class="d-flex flex-column expanded-chat border-start hidden" style="min-width:340px; width: 340px;">
	<h3 class="fs-6 p-1 mb-0 text-center text-secondary">[[modules:chat.pinned-messages]]</h3>

	<div component="chat/messages/pinned/empty" class="text-center p-4 d-flex flex-column">
		<div class="p-4"><i class="fa-solid fa-wind fs-2 text-muted"></i></div>
		<div class="text-xs fw-semibold text-muted">[[modules:chat.no-pinned-messages]]</div>
	</div>

	<ul component="chat/messages/pinned" class="chat-content list-unstyled d-flex flex-column gap-1 p-1 overflow-auto">
		{{{ each messages }}}
		<li component="chat/message" class="chat-message mx-2 pe-2 {{{ if messages.deleted }}} deleted{{{ end }}} {{{ if messages.pinned}}} pinned{{{ end }}} border-top pt-3" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-timestamp="{messages.timestamp}" data-username="{messages.fromUser.username}" data-index="{./index}">

			<div class="message-header lh-1 d-flex align-items-center gap-2 text-sm pb-2">
				<a href="{config.relative_path}/user/{messages.fromUser.userslug}" class="text-decoration-none">{buildAvatar(messages.fromUser, "18px", true, "not-responsive")}</a>
				<span class="chat-user fw-semibold"><a href="{config.relative_path}/user/{messages.fromUser.userslug}">{messages.fromUser.displayname}</a></span>

				<span class="chat-timestamp text-muted timeago" title="{messages.timestampISO}"></span>
			</div>
			<div class="message-body-wrapper hover-parent">
				<div component="chat/message/body" class="message-body ps-0 py-0 overflow-auto text-break">
					{messages.content}
				</div>
				<div component="chat/message/controls" class="position-relative">
					<div class="d-flex border shadow-sm controls position-absolute bg-body hover-d-block end-0" style="bottom:1rem;">
						{{{ if (isAdminOrGlobalMod || isOwner )}}}
						<button class="btn btn-sm btn-link" data-action="pin" title="[[modules:chat.pin-message]]"><i class="fa fa-thumbtack"></i></button>
						<button class="btn btn-sm btn-link" data-action="unpin" title="[[modules:chat.unpin-message]]"><i class="fa fa-thumbtack fa-rotate-90"></i></button>
						{{{ end }}}
					</div>
				</div>
			</div>
		</li>
		{{{ end }}}
	</ul>
</div>