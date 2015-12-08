				<li component="chat/message" class="chat-message clear" data-mid="{../messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
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
						<!-- IF ../edited -->
						<small class="text-muted pull-right" title="[[global:edited]] {../editedISO}"><i class="fa fa-edit"></i></span></small>
						<!-- ENDIF ../edited -->
						{messages.content}
					</div>
				</li>