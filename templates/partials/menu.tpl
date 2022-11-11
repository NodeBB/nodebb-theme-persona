			<div class="d-flex align-items-center me-auto" style="min-width: 0px;">
				<button type="button" class="navbar-toggler border-0" id="mobile-menu">
					<i class="fa fa-lg fa-fw fa-bars unread-count" ></i>
					<span component="unread/icon" class="notification-icon fa fa-fw fa-book unread-count" data-content="{unreadCount.mobileUnread}" data-unread-url="{unreadCount.unreadUrl}"></span>
				</button>
				<div class="d-inline-flex align-items-center" style="min-width: 0px;">
					{{{ if brand:logo }}}
					<a class="navbar-brand" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
						<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-bottom" src="{brand:logo}?{config.cache-buster}" />
					</a>
					{{{ end }}}
					{{{ if config.showSiteTitle }}}
					<a class="navbar-brand text-truncate" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
						{config.siteTitle}
					</a>
					{{{ end }}}
				</div>
			</div>

			{{{ if config.searchEnabled }}}
			<div class="navbar-search visible-xs">
				<form action="{config.relative_path}/search" method="GET">
					<button type="button" class="btn btn-link"><i class="fa fa-lg fa-fw fa-search" title="[[global:header.search]]"></i></button>
					<input autocomplete="off" type="text" class="form-control hidden" name="term" placeholder="[[global:search]]"/>
					<button class="btn btn-primary hidden" type="submit"></button>
					<input type="text" class="hidden" name="in" value="{config.searchDefaultInQuick}" />
				</form>
				<div class="quick-search-container hidden">
					<div class="quick-search-results-container"></div>
				</div>
			</div>
			{{{ end }}}

			{{{ if config.loggedIn }}}
			<button type="button" class="navbar-toggler border-0" id="mobile-chats">
				<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="{unreadCount.notification}"></span>
				<span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count" data-content="{unreadCount.chat}"></span>
				{buildAvatar(user, "32px", true)}
			</button>
			{{{ end }}}

			<div component="navbar/title" class="visible-xs hidden">
				<span></span>
			</div>

			<div id="nav-dropdown" class="collapse navbar-collapse d-none d-lg-block">
				<ul id="main-nav" class="navbar-nav me-auto mb-2 mb-lg-0">
					{{{each navigation}}}
					<!-- IF function.displayMenuItem, @index -->
					<li class="nav-item {navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}" title="{navigation.title}">
						<a class="nav-link navigation-link {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
						{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
							{{{ if navigation.iconClass }}}
							<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
							{{{ end }}}
							{{{ if navigation.text }}}
							<span class="{navigation.textClass}">{navigation.text}</span>
							{{{ end }}}
							{{{ if navigation.dropdown}}}
							<i class="fa fa-caret-down"></i>
							{{{ end }}}
						</a>
						{{{ if navigation.dropdown }}}
						<ul class="dropdown-menu">
							{navigation.dropdownContent}
						</ul>
						{{{ end }}}
					</li>
					<!-- ENDIF function.displayMenuItem -->
					{{{end}}}
				</ul>
				<ul class="navbar-nav mb-2 mb-lg-0 hidden-xs">
					<li class="nav-item">
						<a href="#" id="reconnect" class="nav-link hide" title="[[global:reconnecting-message, {config.siteTitle}]]">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>
				{{{ if config.searchEnabled }}}
				<div class="navbar-nav mb-2 mb-lg-0 position-relative">
					<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
						<div component="search/fields" class="hidden" id="search-fields">
							<div class="input-group flex-nowrap">
								<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">

								<button href="#" class="btn btn-outline-secondary">
									<i class="fa fa-gears fa-fw advanced-search-link"></i>
								</button>
							</div>

							<div id="quick-search-container" class="quick-search-container dropdown-menu d-block mt-2 hidden">
								<div class="form-check filter-category mb-2 ms-4">
									<input class="form-check-input" type="checkbox" checked>
									<label class="form-check-label name"></label>
								</div>

								<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
								<div class="quick-search-results-container"></div>
							</div>
							<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
						</div>

						<li id="" class="nav-item"><a component="search/button" id="search-button" href="#" class="nav-link"><i class="fa fa-search fa-fw" title="Search"></i></a></li>
					</form>

				</div>
				{{{ end }}}

				{{{ if !maintenanceHeader }}}
				{{{ if config.loggedIn }}}
				<ul id="logged-in-menu" class="navbar-nav me-0 mb-2 mb-lg-0 align-items-center">
					<li class="nav-item notifications dropdown d-none d-sm-block" component="notifications" title="[[global:header.notifications]]">
						<a href="{relative_path}/notifications" class="nav-link" data-bs-toggle="dropdown" id="notif_dropdown" data-ajaxify="false" role="button">
							<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="notif_dropdown">
							<li>
								<ul component="notifications/list" class="notification-list">
									<li class="loading-text">
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link">
								<div class="btn-group d-flex justify-content-center">
									<a role="button" href="#" class="btn btn-light mark-all-read"><i class="fa fa-check-double"></i> [[notifications:mark_all_read]]</a>
									<a class="btn btn-light" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see_all]]</a>
								</div>
							</li>
						</ul>
					</li>

					<!-- IF canChat -->
					<li class="nav-item chats dropdown" title="[[global:header.chats]]">
						<a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" id="chat_dropdown" component="chat/dropdown" data-ajaxify="false" role="button">
							<i component="chat/icon" class="fa fa-comment-o fa-fw unread-count" data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
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
					</li>
					<!-- ENDIF canChat -->

					<!-- IMPORT partials/header/user-menu.tpl -->
				</ul>
				{{{ else }}}
				<ul id="logged-out-menu" class="navbar-nav me-0 mb-2 mb-lg-0 align-items-center">
					{{{ if allowRegistration }}}
					<li class="nav-item">
						<a class="nav-link" href="{relative_path}/register">
							<i class="fa fa-pencil fa-fw d-inline-block d-sm-none"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					{{{ end }}}
					<li class="nav-item">
						<a class="nav-link" href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw d-inline-block d-sm-none"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				{{{ end }}}
				{{{ else }}}
				<ul class="navbar-nav me-0 mb-2 mb-lg-0"></ul>
					<li class="nav-item">
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw d-block d-sm-none"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				{{{ end }}}
			</div>
