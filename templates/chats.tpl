<div class="chats-full">
	<div component="chat/nav-wrapper" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">
		<div class="chat-search dropdown">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:search-user-for-chat]]" data-bs-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu">
				<li component="chat/search/start-typing"><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
				<li component="chat/search/no-users" class="hidden"><a href="#" class="dropdown-item">[[users:no-users-found]]</a></li>
				{{{ each searchUsers }}}
				<li component="chat/search/user" data-uid="{./uid}"><a href="#" class="dropdown-item">{buildAvatar(@value, "24px", true)} {./username}<a></a></li>
				{{{ end }}}
			</ul>
		</div>
		<ul component="chat/recent" class="chats-list list-unstyled" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent_room.tpl -->
			{{{end}}}
		</ul>
	</div>
	<div component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>