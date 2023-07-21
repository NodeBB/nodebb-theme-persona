<div class="chats-full d-flex gap-1 h-100 px-3">
	<div component="chat/nav-wrapper" class="flex-shrink-0 d-flex flex-column h-100 gap-1" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">
		<div>
			<button component="chat/create" class="btn btn-primary btn-sm w-100">[[modules:chat.create-room]]</button>
		</div>

		{{{ if publicRooms.length }}}
		<hr class="my-1">
		<div class="d-flex flex-column gap-1">
			<div class="d-flex gap-1 align-items-center">
				<button class="btn btn-sm btn-light p-1" data-bs-toggle="collapse" data-bs-target="#public-rooms"
				onclick="$(this).find('i').toggleClass('fa-chevron-right').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-down"></i></button>
				<label class="text-sm text-muted">[[modules:chat.public-rooms, {publicRooms.length}]]</label>
			</div>
			<div id="public-rooms" component="chat/public" class="collapse show">
				<div class="d-flex flex-column gap-1">
					{{{ each publicRooms }}}
					<div component="chat/public/room" class="btn btn-sm btn-light d-flex justify-content-between hover-parent {{{ if ./unread}}}unread{{{ end }}}" data-roomid="{./roomId}">
						<div class="d-flex gap-1 align-items-center"><i class="fa {./icon} text-muted"></i> {./roomName} <div component="chat/public/room/unread/count" data-count="{./unreadCount}" class="badge border text-primary bg-light {{{ if !./unreadCount }}}hidden{{{ end }}}">{./unreadCountText}</div></div>
						<div>
							<div component="chat/public/room/sort/handle" class="text-muted {{{ if isAdmin }}}hover-d-block{{{ else }}}d-none{{{ end }}}" style="cursor:grab;"><i class="fa fa-bars"></i></div>
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>
		{{{ end }}}

		<hr class="my-1">
		<div class="d-flex flex-column gap-1 overflow-auto">
			{{{ if publicRooms.length }}}
			<div class="d-flex gap-1 align-items-center">
				<button class="btn btn-sm btn-light p-1" data-bs-toggle="collapse" data-bs-target="#private-rooms"
				onclick="$(this).find('i').toggleClass('fa-chevron-right').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-down"></i></button>
				<label class="text-sm text-muted">[[modules:chat.private-rooms, {privateRoomCount}]]</label>
			</div>
			{{{ end }}}

			<ul id="private-rooms" component="chat/recent" class="chats-list overflow-auto mb-0 list-unstyled collapse show" data-nextstart="{nextStart}">
				{{{each rooms}}}
				<!-- IMPORT partials/chats/recent_room.tpl -->
				{{{end}}}
			</ul>
		</div>
	</div>
	<div component="chat/main-wrapper" class="flex-grow-1 ms-md-2 ps-md-2 border-1 border-start-md h-100" style="min-width: 0;">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>