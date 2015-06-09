
<div id="chat-modal" class="chat-modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button id="chat-close-btn" type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<button type="button" class="close" data-action="maximize"><span aria-hidden="true"><i class="fa fa-expand"></i></span><span class="sr-only">[[modules:chat.maximize]]</span></button>
				<h4>[[modules:chat.chatting_with]] <i component="user/status" class="fa fa-circle status offline" title="[[global:offline]]"></i></h4>
			</div>
			<div class="modal-body">
				<span class="since-bar">
				<a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
				<ul id="chat-content" class="well well-sm">

					<span class="user-typing hide"><i class="fa fa-pencil"></i> <span class="text"></span></span>
				</ul>

				<div class="input-group">

					<textarea component="chat/input" id="chat-message-input" rows="1" placeholder="[[modules:chat.placeholder]]" name="chat-message" class="form-control"></textarea>
					<span class="input-group-btn">
						<button id="chat-message-send-btn" class="btn btn-primary" href="#" type="button">[[modules:chat.send]]</button>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>