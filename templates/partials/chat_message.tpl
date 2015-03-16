				<li class="chat-message clear" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
					<div class="message-header">
						<span class="chat-timestamp pull-right timeago" title="{messages.timestampISO}"></span>
						<a href="/user/{messages.fromUser.userslug}"><img class="chat-user-image" src="{messages.fromUser.picture}"></a>
						<strong><span class="chat-user">{messages.fromUser.username}</span></strong>
					</div>
					<div class="message-body">{messages.content}</div>
				</li>