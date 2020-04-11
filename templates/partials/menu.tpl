			<!-- IF brand:logo -->
			<a class="navbar-brand" href="<!-- IF brand:logo:url -->{brand:logo:url}<!-- ELSE -->{relative_path}/<!-- ENDIF brand:logo:url -->">
				<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}?{config.cache-buster}" />
			</a>
			<!-- ENDIF brand:logo -->
			<!-- IF config.showSiteTitle -->
			<a class="navbar-brand" href="<!-- IF title:url -->{title:url}<!-- ELSE -->{relative_path}/<!-- ENDIF title:url -->">
				{config.siteTitle}
			</a>
			<!-- ENDIF config.showSiteTitle -->

			{{{ if !maintenanceHeader }}}
			<ul id="main-nav" class="navbar-nav mr-auto">
				{{{each navigation}}}
				<!-- IF function.displayMenuItem, @index -->
				<li class="nav-item px-2 {navigation.class}">
					<a class="nav-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
						<!-- IF navigation.iconClass -->
						<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
						<!-- ENDIF navigation.iconClass -->

						<!-- IF navigation.text -->
						<span class="{navigation.textClass}">{navigation.text}</span>
						<!-- ENDIF navigation.text -->
					</a>
				</li>
				<!-- ENDIF function.displayMenuItem -->
				{{{end}}}
			</ul>

			{{{ if config.loggedIn }}}
			<ul id="logged-in-menu" class="navbar-nav">
				<li class="nav-item dropdown px-2" data-component="notifications">
					<a href="{relative_path}/notifications" title="[[global:header.notifications]]" class="nav-link text-secondary" data-toggle="dropdown" id="notif_dropdown" data-ajaxify="false" role="button">
						<i data-component="notifications/icon" class="fa fa-fw fa-bell-o unread-count" data-content="{unreadCount.notification}"></i>
					</a>
					<div class="dropdown-menu" aria-labelledby="notif_dropdown">
						<ul data-component="notifications/list" class="dropdown-item list-unstyled">
							<li>
								<i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]
							</li>
						</ul>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" class="mark-all-read">[[notifications:mark_all_read]]</a>
						<a class="dropdown-item" href="{relative_path}/notifications">[[notifications:see_all]]</a>
					</div>
				</li>

				{{{ if !config.disableChat }}}
				<li class="nav-item dropdown px-2" data-component="chats">
					<a class="nav-link text-secondary" data-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" title="[[global:header.chats]]" id="chat_dropdown" data-component="chat/dropdown" data-ajaxify="false" role="button">
						<i data-component="chat/icon" class="fa fa-comment-o fa-fw unread-count" data-content="{unreadCount.chat}"></i>
					</a>
					<div class="dropdown-menu" aria-labelledby="chat_dropdown">
						<ul class="dropdown-item list-unstyled" data-component="chat/list">
							<li>
								<i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]
							</li>
						</ul>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" class="mark-all-read" data-component="chats/mark-all-read">[[modules:chat.mark_all_read]]</a>
						<a class="dropdown-item" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
					</div>
				</li>
				{{{end}}}

				<li id="user_label" class="nav-item dropdown">
					<label for="user-control-list-check" class="nav-link mb-0 py-1" data-toggle="dropdown" id="user_dropdown" title="[[global:header.profile]]" role="button">
						{buildAvatar(user, "md", true)}
						<span id="user-header-name" class="visible-xs-inline">{user.username}</span>
					</label>
					<input type="checkbox" style="display: none;" id="user-control-list-check" aria-hidden="true">
					<div id="user-control-list list-unstyled" data-component="header/usercontrol" class="dropdown-menu" aria-labelledby="user_dropdown">
						<a class="dropdown-item" data-component="header/profilelink" href="{relative_path}/user/{user.userslug}">
							<i data-component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span data-component="header/username">{user.username}</span>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" data-status="online">
							<i class="fa fa-fw fa-circle text-success"></i><span <!-- IF user.online -->class="bold"<!-- ENDIF user.online -->> [[global:online]]</span>
						</a>
						<a  class="dropdown-item"href="#" data-status="away">
							<i class="fa fa-fw fa-circle text-warning"></i><span <!-- IF user.away -->class="bold"<!-- ENDIF user.away -->> [[global:away]]</span>
						</a>
						<a class="dropdown-item" href="#" data-status="dnd">
							<i class="fa fa-fw fa-circle text-danger"></i><span <!-- IF user.dnd -->class="bold"<!-- ENDIF user.dnd -->> [[global:dnd]]</span>
						</a>
						<a class="dropdown-item" href="#" data-status="offline">
							<i class="fa fa-fw fa-circle text-muted"></i><span <!-- IF user.offline -->class="bold"<!-- ENDIF user.offline -->> [[global:invisible]]</span>
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" data-component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
							<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
						</a>
						<a class="dropdown-item" data-component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
							<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
						</a>
						<!-- IF showModMenu -->
						<div class="dropdown-divider"></div>
						<div class="dropdown-header">[[pages:moderator-tools]]</div>
						<a class="dropdown-item" href="{relative_path}/flags">
							<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
						</a>
						<a class="dropdown-item" href="{relative_path}/post-queue">
							<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
						</a>
						<a class="dropdown-item" href="{relative_path}/ip-blacklist">
							<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
						</a>
						<!-- ENDIF showModMenu -->
						<div class="dropdown-divider"></div>
						<div class="dropdown-item" data-component="user/logout">
							<form method="post" action="{relative_path}/logout">
								<input type="hidden" name="_csrf" value="{config.csrf_token}">
								<input type="hidden" name="noscript" value="true">
								<button type="submit" class="btn btn-link text-dark">
									<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
								</button>
							</form>
						</div>
					</div>
				</li>
			</ul>
			{{{ else }}}
			<ul id="logged-out-menu" class="navbar-nav">
				{{{ if allowRegistration }}}
				<li class="nav-item">
					<a class="nav-link" href="{relative_path}/register">
						<i class="fa fa-pencil fa-fw hidden-sm hidden-md hidden-lg"></i>
						<span>[[global:register]]</span>
					</a>
				</li>
				{{{ end }}}
				<li class="nav-item">
					<a class="nav-link" href="{relative_path}/login">
						<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
						<span>[[global:login]]</span>
					</a>
				</li>
			</ul>
			{{{ end }}} <!-- config.loggedIn -->
			{{{ else }}} <!-- maintenanceHeader -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="{relative_path}/login">
						<i class="fa fa-sign-in fa-fw d-xs-inline-block"></i>
						<span>[[global:login]]</span>
					</a>
				</li>
			</ul>
			{{{ end }}} <!-- maintenanceHeader -->
