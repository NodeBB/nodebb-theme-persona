<div component="chat/composer" class="d-flex flex-column gap-2 border-top pt-2 align-items-start">
	<div component="chat/composer/replying-to" data-tomid="" class="text-sm px-2 d-flex gap-2 align-items-center hidden">
		<div component="chat/composer/replying-to-text"></div> <button component="chat/composer/replying-to-cancel" class="btn-ghost-sm px-2 py-1"><i class="fa fa-times"></i></button>
	</div>
	<div class="w-100 flex-grow-1 flex-nowrap position-relative d-flex rounded-2 border border-secondary p-1 align-items-end">
		<button component="chat/upload/button" class="btn btn-light btn-sm px-2 rounded-1" type="button" title="[[global:upload]]" data-bs-toggle="tooltip"><i class="fa fa-fw fa-upload"></i></button>
		<div class="flex-grow-1 align-self-center">
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder.mobile]]" class="bg-transparent text-body form-control chat-input mousetrap rounded-0 border-0 shadow-none ps-1 py-0" style="min-height: 1.5rem;height:0;max-height:30vh;resize:none;"></textarea>
		</div>
		<div class="d-flex gap-1">
			<div component="chat/message/remaining" class="text-xs text-muted me-1 align-self-center">{maximumChatMessageLength}</div>
			<button class="btn btn-primary btn-sm px-2 rounded-1" type="button" data-action="send" title="[[modules:chat.send]]" data-bs-toggle="tooltip"><i class="fa fa-fw fa-paper-plane"></i></button>
		</div>
	</div>
	<form class="hidden" component="chat/upload" method="post" enctype="multipart/form-data">
		<input type="file" name="files[]" multiple class="hidden"/>
	</form>
</div>