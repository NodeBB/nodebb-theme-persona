
<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-md-4">
		<ul class="chats-list recent-chats" data-nextstart="{nextStart}">
			<!-- BEGIN chats -->
			<!-- IMPORT partials/chat_contact.tpl -->
			<!-- END chats -->
			<!-- BEGIN contacts -->
			<!-- IMPORT partials/chat_contact.tpl -->
			<!-- END contacts -->
		</ul>
	</div>

	<div class="col-md-8 hidden-sm hidden-xs">
		<!-- IF !allowed -->
		<div class="alert alert-warning">
			[[error:chat-restricted]]
		</div>
		<!-- ENDIF !allowed -->
		<!-- IF meta -->
		<div class="expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">

			<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
			<h1>{meta.username}</h1>


			<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
			<ul class="chat-content">
				<!-- IMPORT partials/chat_messages.tpl -->
			</ul>
			<div class="input-group">
				<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">[[modules:chat.send]]</button>
				</span>
			</div>
		</div>
		<!-- ELSE -->
		<div class="alert alert-info">
			[[modules:chat.no-messages]]
		</div>
		<!-- ENDIF meta -->
	</div>
</div>
