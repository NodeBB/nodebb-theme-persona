<div class="chats-full">
	<div data-component="chat/nav-wrapper" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->">
		<div class="chat-search dropdown">
			<input class="form-control" type="text" data-component="chat/search" placeholder="[[users:enter_username]]" data-toggle="dropdown" />
			<ul data-component="chat/search/list" class="dropdown-menu"></ul>
		</div>
		<ul data-component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent-room.tpl -->
			{{{end}}}
		</ul>
	</div>
	<div data-component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
</div>