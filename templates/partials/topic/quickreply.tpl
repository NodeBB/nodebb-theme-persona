<!-- IF privileges.topics:reply -->
<div component="topic/quickreply/container" class="clearfix quick-reply">
	<div class="icon float-start hidden-xs">
		<a data-uid="{loggedInUser.uid}" href="{{{ if loggedInUser.userslug }}}{config.relative_path}/user/{loggedInUser.userslug}{{{ else }}}#{{{ end }}}">
			{buildAvatar(loggedInUser, "48px", true, "", "user/picture")}
			{{{ if loggedInUser.status }}}
			<i component="user/status" class="fa fa-circle status {loggedInUser.status}" title="[[global:{loggedInUser.status}]]"></i>
			{{{ end }}}
		</a>
	</div>
	<form method="post" action="{config.relative_path}/compose">
		<input type="hidden" name="tid" value="{tid}" />
		<input type="hidden" name="_csrf" value="{config.csrf_token}" />
		<div class="quickreply-message">
			<textarea name="content" component="topic/quickreply/text" class="form-control mousetrap" rows="5" placeholder="[[modules:composer.textarea.placeholder]]"></textarea>
			<div class="imagedrop"><div>[[topic:composer.drag-and-drop-images]]</div></div>
		</div>
		<div class="btn-group float-end">
			<button type="submit" component="topic/quickreply/button" class="btn btn-primary">[[topic:post-quick-reply]]</button>
			<button type="submit" component="topic/quickreply/expand" class="btn btn-outline-primary" formmethod="get"><i class="fa fa-expand"></i></button>
		</div>
	</form>
	<form component="topic/quickreply/upload" method="post" enctype="multipart/form-data">
		<input type="file" name="files[]" multiple class="hidden"/>
	</form>

</div>
<!-- ENDIF privileges.topics:reply -->
