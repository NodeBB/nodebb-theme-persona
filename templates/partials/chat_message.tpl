				<li component="chat/message" class="chat-message clear" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
					<div class="message-header">
						<a href="{config.relative_path}/user/{messages.fromUser.userslug}">
							<!-- IF messages.fromUser.picture -->
							<img class="chat-user-image not-responsive" src="{messages.fromUser.picture}">
							<!-- ELSE -->
							<div class="user-icon chat-user-image" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
							<!-- ENDIF messages.fromUser.picture -->
						</a>
						<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
						<span class="chat-timestamp timeago" title="{messages.timestampISO}"></span>
					</div>
					<div component="chat/message/body" class="message-body">
						<!-- IF messages.edited -->
						<small class="text-muted pull-right" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></small>
						<!-- ENDIF messages.edited -->
						<!-- IF messages.self -->
						<div class="pull-right btn-group controls">
							<button class="btn btn-xs btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
							<button class="btn btn-xs btn-link" data-action="delete"><i class="fa fa-times"></i></button>
						</div>
						<!-- ENDIF messages.self -->
						{messages.content}
					</div>
				</li>