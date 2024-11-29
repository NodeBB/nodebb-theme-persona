<a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" data-ajaxify="false" id="chat_dropdown" component="chat/dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	<i component="chat/icon" class="fa {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} fa-fw unread-count" data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
</a>
<ul class="dropdown-menu dropdown-menu-end p-1" aria-labelledby="chat_dropdown" role="menu">
	<li>
		<ul component="chat/list" class="list-unstyled chat-list chats-list ghost-scrollbar pe-1">
			<div class="rounded-1">
				<div class="d-flex gap-1 justify-content-between">
					<div class="dropdown-item p-2 d-flex gap-2 placeholder-wave">
						<div class="main-avatar">
							<div class="placeholder" style="width: 32px; height: 32px;"></div>
						</div>
						<div class="d-flex flex-grow-1 flex-column w-100">
							<div class="text-xs"><div class="placeholder col-3"></div></div>
							<div class="text-sm"><div class="placeholder col-11"></div></div>
							<div class="text-xs"><div class="placeholder col-4"></div></div>
						</div>
					</div>
					<div>
						<button class="mark-read btn btn-ghost btn-sm d-flex align-items-center justify-content-center flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
							<i class="unread fa fa-2xs fa-circle text-primary"></i>
						</button>
					</div>
				</div>
			</div>
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