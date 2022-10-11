<!-- IF roomId -->
<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">
	<div component="chat/header" class="d-flex align-items-center px-3">
		<span class="members flex-grow-1">
			[[modules:chat.chatting_with]]:
			{{{each users}}}
			<a href="{config.relative_path}/uid/{../uid}">{../username}</a><!-- IF !@last -->,<!-- END -->
			{{{end}}}
		</span>

		<button type="button" class="btn btn-link d-none d-md-block p-2 text-muted" data-action="pop-out" aria-hidden="true" aria-label="Pop Out"><i class="fa fa-compress"></i></button>
		<!-- IMPORT partials/chats/options.tpl -->
		<button type="button" class="btn-close" aria-hidden="true" aria-label="Close" data-action="close"></button>
	</div>
	<div class="position-relative">
		<div component="chat/messages/scroll-up-alert" class="position-absolute scroll-up-alert alert alert-info hidden w-100" role="button" style="z-index: 1;">[[modules:chat.scroll-up-alert]]</div>
	</div>
	<ul class="chat-content">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<div component="chat/composer">
		<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="2"></textarea>
		<button class="btn btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
		<span component="chat/message/remaining">{maximumChatMessageLength}</span>
		<form component="chat/upload" method="post" enctype="multipart/form-data">
			<input type="file" name="files[]" multiple class="hidden"/>
		</form>
	</div>
</div>
<!-- ELSE -->
<div class="alert alert-info me-3">
	[[modules:chat.no-messages]]
</div>
<!-- ENDIF roomId -->