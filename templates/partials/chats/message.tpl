<li component="chat/message" class="chat-message clear<!-- IF ../deleted --> deleted<!-- END -->" data-index="{messages.index}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
	<div class="message-header">
		<a href="{config.relative_path}/user/{messages.fromUser.userslug}">
			<!-- IF messages.fromUser.picture -->
			<img class="chat-user-image not-responsive" src="{messages.fromUser.picture}">
			<!-- ELSE -->
			<div class="user-icon chat-user-image" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
			<!-- ENDIF messages.fromUser.picture -->
		</a>
		<strong><span class="chat-user"><a href="{config.relative_path}/user/{messages.fromUser.userslug}">{messages.fromUser.username}</a></span></strong>
		<!-- IF ../fromUser.banned -->
		<span class="label label-danger">[[user:banned]]</span>
		<!-- END -->
		<!-- IF ../fromUser.deleted -->
		<span class="label label-danger">[[user:deleted]]</span>
		<!-- END -->
		<span class="chat-timestamp timeago" title="{messages.timestampISO}"></span>
		<!-- IF isAdminOrGlobalMod -->
		<div class="chat-ip pull-right" title="[[modules:chat.show-ip]]"><i class="fa fa-info-circle chat-ip-button"></i></div>
		<!-- ENDIF isAdminOrGlobalMod -->
		<!-- IF messages.edited -->
		<div class="text-muted pull-right" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></div>
		<!-- ENDIF messages.edited -->
		<!-- IF !config.disableChatMessageEditing -->
		<!-- IF messages.self -->
		<div class="pull-right btn-group controls">
			<button class="btn btn-xs btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
			<button class="btn btn-xs btn-link" data-action="delete"><i class="fa fa-times"></i></button>
			<button class="btn btn-xs btn-link" data-action="restore"><i class="fa fa-repeat"></i></button>
		</div>
		<!-- ENDIF messages.self -->
		<!-- ENDIF !config.disableChatMessageEditing -->
	</div>
	<div component="chat/message/body" class="message-body">
		{messages.content}
	</div>
</li>