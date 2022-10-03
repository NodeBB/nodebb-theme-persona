<div class="chats-full">
	<div component="chat/nav-wrapper" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->">
		<div class="chat-search dropdown">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:search-user-for-chat]]" data-bs-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu">
				<li><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
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