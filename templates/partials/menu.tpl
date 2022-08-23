
			<button type="button" class="navbar-toggler" id="mobile-menu">
				<i class="fa fa-lg fa-fw fa-bars unread-count" data-content="{unreadCount.mobileUnread}" data-unread-url="{unreadCount.unreadUrl}"></i>
			</button>

			{{{ if brand:logo }}}
			<a class="navbar-brand" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}?{config.cache-buster}" />
			</a>
			{{{ end }}}

			{{{ if config.showSiteTitle }}}
			<a class="navbar-brand" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<h1 class="navbar-brand forum-title">{config.siteTitle}</h1>
			</a>
			{{{ end }}}


			{{{ if config.loggedIn }}}
			<button type="button" class="navbar-toggler" id="mobile-chats">
				<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="{unreadCount.notification}"></span>
				<span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count" data-content="{unreadCount.chat}"></span>
				{buildAvatar(user, "md", true)}
			</button>
			{{{ end }}}


			{{{ if config.searchEnabled }}}
			<div class="navbar-search d-block d-sm-none">
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

			<div component="navbar/title" class="d-block d-sm-none hidden">
				<span></span>
			</div>

			<div id="nav-dropdown" class="collapse navbar-collapse d-none d-lg-block">
				<ul id="main-nav" class="navbar-nav me-auto mb-2 mb-lg-0">
					{{{each navigation}}}
					<!-- IF function.displayMenuItem, @index -->
					<li class="nav-item {navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}"  title="{navigation.title}">
						<a title="{navigation.title}" class="nav-link navigation-link {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
						{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
							{{{ if navigation.iconClass }}}
							<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
							{{{ end }}}
							{{{ if navigation.text }}}
							<span class="{navigation.textClass} hidden">{navigation.text}</span>
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

				<ul class="navbar-nav me-0 mb-2 mb-lg-0">
					{{{ if config.searchEnabled }}}
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">search</a>
					</li>
					{{{ end }}}

					{{{ if !maintenanceHeader }}}
					<li class="nav-item">
						{{{ if config.loggedIn }}}
						<a class="nav-link active" aria-current="page" href="#">loggedinmenu</a>
						{{{ else }}}
						<a class="nav-link active" aria-current="page" href="#">loggedoutmenu</a>
						{{{ end}}}
					</li>

					{{{ else }}}
					<li class="nav-item">
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw d-block d-sm-none"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
					{{{ end }}}
				</ul>
			</div>
