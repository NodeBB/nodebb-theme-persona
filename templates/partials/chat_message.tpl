				<li class="chat-message clear" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
					<div class="message-header">
						<a href="{config.relative_path}/user/{messages.fromUser.userslug}"><img class="chat-user-image img-circle not-responsive" src="{messages.fromUser.picture}"></a>
						<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
						<span class="chat-timestamp timeago" title="{messages.timestampISO}"></span>
					</div>
					<div class="message-body">{messages.content}</div>
				</li>