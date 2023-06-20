<a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" id="chat_dropdown" component="chat/dropdown" data-ajaxify="false" role="button">
	<i component="chat/icon" class="fa {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} fa-fw unread-count" data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
</a>
<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="chat_dropdown">
	<li>
		<ul component="chat/list" class="chat-list chats-list">
			<li class="loading-text">
				<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
			</li>
		</ul>
	</li>
	<li class="notif-dropdown-link">
		<div class="btn-group d-flex justify-content-center">
			<a class="btn btn-light mark-all-read" href="#" component="chats/mark-all-read"><i class="fa fa-check-double"></i> [[modules:chat.mark_all_read]]</a>
			<a class="btn btn-light" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-comments"></i> [[modules:chat.see_all]]</a>
		</div>
	</li>
</ul>