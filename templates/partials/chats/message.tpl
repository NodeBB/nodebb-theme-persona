<li component="chat/message" class="chat-message mx-2 pe-2 fw-light clear<!-- IF ../deleted --> deleted<!-- END -->" data-index="{messages.index}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
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
		<!-- IF messages.edited -->
		<div class="text-muted float-end" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></div>
		<!-- ENDIF messages.edited -->
	</div>
	<div class="message-body-wrapper">
		<div component="chat/message/body" class="message-body">
			{messages.content}
		</div>

		<!-- IF !config.disableChatMessageEditing -->
		<!-- IF messages.self -->
		<div class="btn-group controls">
			<button class="btn btn-sm btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
			<button class="btn btn-sm btn-link" data-action="delete"><i class="fa fa-times"></i></button>
			<button class="btn btn-sm btn-link" data-action="restore"><i class="fa fa-repeat"></i></button>
			<!-- IF isAdminOrGlobalMod -->
			<button class="btn btn-sm btn-link chat-ip" title="[[modules:chat.show-ip]]"><i class="fa fa-info-circle chat-ip-button"></i></button>
			<!-- ENDIF isAdminOrGlobalMod -->
		</div>
		<!-- ENDIF messages.self -->
		<!-- ENDIF !config.disableChatMessageEditing -->
	</div>
</li>