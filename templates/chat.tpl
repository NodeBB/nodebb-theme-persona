<div id="chat-modal" class="chat-modal modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content" style="width: 600px;">
			<div class="modal-header d-flex">
				<div class="fs-5 flex-grow-1" component="chat/room/name"><!-- IF roomName -->{roomName}<!-- ELSE -->{usernames}<!-- ENDIF roomName --></div>
				<button type="button" class="btn btn-link d-none d-md-block p-2 text-muted align-text-top" data-action="maximize">
					<span aria-hidden="true"><i class="fa fa-fw fa-expand"></i></span>
					<span class="sr-only">[[modules:chat.maximize]]</span>
				</button>
				<button type="button" class="btn btn-link d-none d-md-block p-2 text-muted align-text-top" data-action="minimize">
					<span aria-hidden="true"><i class="fa fa-fw fa-minus"></i></span>
					<span class="sr-only">[[modules:chat.minimize]]</span>
				</button>
				<!-- IMPORT partials/chats/options.tpl -->

				<button id="chat-close-btn" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>

			<div class="modal-body">
				<div class="position-relative">
					<div component="chat/messages/scroll-up-alert" class="position-absolute scroll-up-alert alert alert-info hidden w-100" role="button">[[modules:chat.scroll-up-alert]]</div>
				</div>
				<ul class="chat-content" component="chat/messages">
					<!-- IMPORT partials/chats/messages.tpl -->
				</ul>

				<div component="chat/composer">
					<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
					<button class="btn btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
					<span component="chat/message/remaining">{maximumChatMessageLength}</span>
					<form component="chat/upload" method="post" enctype="multipart/form-data">
						<input type="file" name="files[]" multiple class="hidden"/>
					</form>
				</div>
			</div>
			<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
		</div>
	</div>
</div>