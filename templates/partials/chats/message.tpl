<li component="chat/message" class="chat-message mx-2 pe-2 fw-light clear{{{ if messages.deleted }}} deleted{{{ end }}} {{{ if messages.pinned}}} pinned{{{ end }}}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-index="{messages.index}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}" data-username="{messages.fromUser.username}">

	{{{ if messages.parent }}}
	<!-- IMPORT partials/chats/parent.tpl -->
	{{{ end }}}

	<div class="message-header">
		<a href="{config.relative_path}/user/{messages.fromUser.userslug}">{buildAvatar(messages.fromUser, "32px", true, "not-responsive")}</a>
		<span class="chat-user fw-bold"><a href="{config.relative_path}/user/{messages.fromUser.userslug}">{messages.fromUser.displayname}</a></span>
		<!-- IF ../fromUser.banned -->
		<span class="badge bg-danger">[[user:banned]]</span>
		<!-- END -->
		<!-- IF ../fromUser.deleted -->
		<span class="badge bg-danger">[[user:deleted]]</span>
		<!-- END -->
		<small class="chat-timestamp text-muted ms-2 timeago" title="{messages.timestampISO}"></small>

		<div component="chat/message/edited" class="text-muted float-end {{{ if !messages.edited }}}hidden{{{ end }}}" title="[[global:edited-timestamp, {isoTimeToLocaleString(messages.editedISO, config.userLang)}]]"><i class="fa fa-edit"></i></span></div>
	</div>
	<div class="message-body-wrapper">
		<div component="chat/message/body" class="message-body">
			{messages.content}
		</div>
		<!-- IMPORT partials/chats/reactions.tpl -->
		<div component="chat/message/controls" class="btn-group controls">
			<!-- IMPORT partials/chats/add-reaction.tpl -->
			<button class="btn btn-sm btn-link" data-action="reply" title="[[topic:reply]]"><i class="fa fa-reply"></i></button>

			<div class="btn-group d-inline-block">
				<button class="btn btn-sm btn-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-ellipsis" type="button"></i></button>
				<ul class="dropdown-menu dropdown-menu-end p-1 text-sm list-unstyled">
					{{{ if (isAdminOrGlobalMod || (!config.disableChatMessageEditing && messages.self)) }}}
					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="edit"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-pencil text-muted"></i> [[topic:edit]]</span></a>
					</li>
					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="delete"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-trash text-muted"></i> [[topic:delete]]</span></a>
					</li>
					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="restore"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-repeat text-muted"></i> [[topic:restore]]</span></a>
					</li>
					{{{ end }}}

					{{{ if (isAdminOrGlobalMod || isOwner )}}}
					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="pin"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-thumbtack text-muted"></i> [[modules:chat.pin-message]]</span></a>
					</li>
					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="unpin"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-thumbtack fa-rotate-90 text-muted"></i> [[modules:chat.unpin-message]]</span></a>
					</li>
					<li class="dropdown-divider"></li>
					{{{ end }}}

					{{{ if isAdminOrGlobalMod }}}
					<li>
						<a href="#" class="dropdown-item rounded-1 chat-ip-button"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-info-circle text-muted"></i> [[modules:chat.show-ip]]</span></a>
					</li>
					{{{ end }}}

					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="copy-text" data-mid="{messages.mid}"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-copy text-muted"></i> [[modules:chat.copy-text]]</span></a>
					</li>

					<li>
						<a href="#" class="dropdown-item rounded-1" data-action="copy-link" data-mid="{messages.mid}"><span class="d-inline-flex align-items-center gap-2"><i class="fa fa-fw fa-link text-muted"></i> [[modules:chat.copy-link]]</span></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</li>