
<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-md-4">
		<div class="chat-search hidden-xs">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:enter_username]]" />
		</div>
		<ul component="chat/search/list" class="chat-search-list">
			
		</ul>
		<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<!-- IMPORT partials/chat_recent_room.tpl -->
			<!-- END rooms -->
		</ul>
	</div>

	<div class="col-md-8 hidden-sm hidden-xs">
		<!-- IF roomId -->
		<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">

			<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>

			<!-- IF showUserInput -->
			<div class="users-tag-container">
				<input class="users-tag-input" type="text" class="form-control" placeholder="[[modules:chat.add-users-to-room]]" tabindex="4"/>
			</div>
			<!-- ENDIF showUserInput -->

			<input class="form-control" component="chat/room/name" value="{roomName}" <!-- IF !isOwner -->disabled<!-- ENDIF !isOwner -->/>

			<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
			<ul class="chat-content">
				<!-- IMPORT partials/chat_messages.tpl -->
			</ul>
			<div class="input-group">
				<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="1"></textarea>
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">[[modules:chat.send]]</button>
				</span>
			</div>
		</div>
		<!-- ELSE -->
		<div class="alert alert-info">
			[[modules:chat.no-messages]]
		</div>
		<!-- ENDIF roomId -->
	</div>
</div>
