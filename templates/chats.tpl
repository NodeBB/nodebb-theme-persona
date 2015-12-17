
<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-md-4">
		<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->">

				<div data-username="{rooms.lastUser.username}" data-uid="{rooms.lastUser.uid}">
					<!-- IF rooms.lastUser.picture -->
					<img class="user-img" src="{rooms.lastUser.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img" style="background-color: {rooms.lastUser.icon:bgColor};">{rooms.lastUser.icon:text}</div>
					<!-- ENDIF rooms.lastUser.picture -->
					<i component="user/status" title="[[global:{rooms.lastUser.status}]]" class="fa fa-circle status {rooms.lastUser.status}"></i>
					<span class="username">{rooms.usernames}</span>
				</div>

				<span class="teaser-content">{rooms.teaser.content}</span>
				<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>
			</li>
			<!-- END rooms -->
		</ul>
	</div>

	<div class="col-md-8 hidden-sm hidden-xs">
		<!-- IF !allowed -->
		<div class="alert alert-warning">
			[[error:chat-restricted]]
		</div>
		<!-- ENDIF !allowed -->
		<!-- IF roomId -->
		<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">

			<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
			<h4 component="chat/title">[[modules:chat.chatting_with]]</h4>

			<div class="users-tag-container">
				<input class="users-tag-input" type="text" class="form-control" placeholder="enter users here" tabindex="4"/>
			</div>

			<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
			<ul class="chat-content">
				<!-- IMPORT partials/chat_messages.tpl -->
			</ul>
			<div class="input-group">
				<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">[[modules:chat.send]]</button>
				</span>
			</div>
		</div>
		<!-- ELSE -->
		<div class="alert alert-info">
			[[modules:chat.no-messages]]
		</div>
		<!-- ENDIF roomId -->
	</div>
</div>
