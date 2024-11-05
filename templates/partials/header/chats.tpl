<a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" data-ajaxify="false" id="chat_dropdown" component="chat/dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	<i component="chat/icon" class="fa {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} fa-fw unread-count" data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
</a>
<ul class="dropdown-menu dropdown-menu-end p-1" aria-labelledby="chat_dropdown" role="menu">
	<li>
		<ul component="chat/list" class="list-unstyled chat-list chats-list ghost-scrollbar pe-1">
			<li class="loading-text">
				<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
			</li>
		</ul>
	</li>
	<li class="dropdown-divider"></li>
	<li>
		<div class="d-flex justify-content-center gap-1 flex-wrap">
			<a class="btn btn-light btn-sm mark-all-read flex-fill text-nowrap" href="#" component="chats/mark-all-read"><i class="fa fa-check-double"></i> [[modules:chat.mark-all-read]]</a>
			<a class="btn btn-primary btn-sm flex-fill text-nowrap" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-comments"></i> [[modules:chat.see-all]]</a>
		</div>
	</li>
</ul>