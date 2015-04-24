<div class="col-sm-9">
	<!-- IF !allowed -->
	<div class="alert alert-warning">
		[[error:chat-restricted]]
	</div>
	<!-- ENDIF !allowed -->
	<!-- IF meta -->
	<div class="panel panel-default expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
		<div class="panel-heading">
			<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
			<h2 class="panel-title">[[modules:chat.message-history]]</h2>
		</div>
		<div class="panel-body">
			<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
			<ul class="chat-content well well-sm">
				<!-- IMPORT partials/chat_messages.tpl -->
				<span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
			</ul>
			<div class="input-group">
				<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">Send</button>
				</span>
			</div>
		</div>
	</div>
	<!-- ELSE -->
	<div class="alert alert-info">
		[[modules:chat.no-messages]]
	</div>
	<!-- ENDIF meta -->
</div>
<div class="col-sm-3">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title">[[modules:chat.contacts]]</h2>
		</div>
		<div class="panel-body">
			<ul class="chats-list">
				<!-- BEGIN contacts -->
				<li data-username="{contacts.username}" data-uid="{contacts.uid}">
					<i component="user/status" title="[[global:{contacts.status}]]" class="fa fa-circle status {contacts.status}"></i>
					<img class="user-img" src="{contacts.picture}">
					<span>{contacts.username}</span>
				</li>
				<!-- END contacts -->
			</ul>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title">[[modules:chat.recent-chats]]</h2>
		</div>
		<div class="panel-body">
			<ul class="chats-list recent-chats" data-nextstart="{nextStart}">
				<!-- BEGIN chats -->
				<li data-username="{chats.username}" data-uid="{chats.uid}" class="<!-- IF chats.unread -->unread<!-- ENDIF chats.unread -->">
					<i component="user/status" title="[[global:{chats.status}]]" class="fa fa-circle status {chats.status}"></i>
					<img class="user-img" src="{chats.picture}">
					<span>{chats.username}</span>
				</li>
				<!-- END chats -->
			</ul>
		</div>
	</div>
</div>
