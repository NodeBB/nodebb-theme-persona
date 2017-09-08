
<div id="chat-modal" class="chat-modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<button id="chat-close-btn" type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<button type="button" class="close hidden-xs hidden-sm" data-action="maximize"><span aria-hidden="true"><i class="fa fa-expand"></i></span><span class="sr-only">[[modules:chat.maximize]]</span></button>
				<button type="button" class="close hidden-xs hidden-sm" data-action="minimize"><span aria-hidden="true"><i class="fa fa-minus"></i></span><span class="sr-only">[[modules:chat.minimize]]</span></button>
				<button class="close" component="chat/controlsToggle"><i class="fa fa-gear"></i></button>

				<h4><!-- IF roomName -->{roomName}<!-- ELSE -->{usernames}<!-- ENDIF roomName --></h4>

				<form component="chat/controls" style="display: none;">
					<!-- IF showUserInput -->
					<div class="users-tag-container">
						<input class="users-tag-input" type="text" class="form-control" placeholder="enter users here" tabindex="4"/>
					</div>
					<!-- ENDIF showUserInput -->
					<input class="form-control" component="chat/room/name" value="{roomName}" <!-- IF !isOwner -->disabled<!-- ENDIF !isOwner -->/>
				</form>
			</div>

			<div class="modal-body">
				<ul class="chat-content" component="chat/messages">
					<!-- IMPORT partials/chats/messages.tpl -->
				</ul>

				<div class="input-group">
					<textarea component="chat/input" id="chat-message-input" rows="1" placeholder="[[modules:chat.placeholder]]" name="chat-message" class="form-control" <!-- IF !canReply -->readonly<!-- ENDIF !canReply -->></textarea>
					<span class="input-group-btn">
						<button id="chat-message-send-btn" class="btn btn-primary" href="#" type="button" <!-- IF !canReply -->disabled<!-- ENDIF !canReply -->>[[modules:chat.send]]</button>
					</span>
				</div>
				<span component="chat/message/length">0</span>/<span>{maximumChatMessageLength}</span>
			</div>
		</div>
	</div>
</div>