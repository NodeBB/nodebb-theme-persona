			<div class="navbar-header">
				<button type="button" class="navbar-toggle" id="mobile-menu">
					<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o" data-content="0"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<a href="<!-- IF brand:logo:url -->{brand:logo:url}<!-- ELSE -->{relative_path}/<!-- ENDIF brand:logo:url -->">
					<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}" />
				</a>
				<!-- IF showSiteTitle -->
				<a href="{relative_path}/">
					<h1 class="navbar-brand forum-title">{title}</h1>
				</a>
				<!-- ENDIF showSiteTitle -->

				<div component="navbar/title" class="visible-xs">
					<span></span>
				</div>
			</div>

			<div id="nav-dropdown" class="hidden-xs">
				<!-- IF !maintenanceHeader -->
				<!-- IF loggedIn -->

				<ul id="logged-in-menu" class="nav navbar-nav navbar-right">
					<li id="user_label" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img component="header/userpicture" src="{user.picture}" alt="{user.username}" /> <span id="user-header-name" class="visible-xs-inline">{user.username}</span>
						</a>
						<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a component="header/profilelink" href="{relative_path}/user/{user.userslug}">
									<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="#" class="user-status" data-status="online">
									<i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away">
									<i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd">
									<i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
								</a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline">
									<i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
								</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li component="user/logout">
								<a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
							</li>
						</ul>
					</li>
				</ul>
				<ul id="logged-in-menu" class="nav navbar-nav navbar-right">
					<li class="notifications dropdown text-center hidden-xs">
						<a href="#" title="[[global:header.notifications]]" class="dropdown-toggle" data-toggle="dropdown" id="notif_dropdown">
							<i component="notifications/icon" class="fa fa-fw fa-bell-o" data-content="0"></i>
						</a>
						<ul class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<ul id="notif-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a></li>
							<li class="notif-dropdown-link"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></li>
						</ul>
					</li>

					<!-- IF !disableChat -->
					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="[[global:header.chats]]" id="chat_dropdown" component="chat/dropdown">
							<i component="chat/icon" class="fa fa-comment-o fa-fw"></i> <span class="visible-xs-inline">[[global:header.chats]]</span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<ul component="chat/list" class="chat-list">
									<li>
										<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
									</li>
								</ul>
							</li>
							<li class="notif-dropdown-link"><a href="{relative_path}/chats">[[modules:chat.see_all]]</a></li>
						</ul>
					</li>
					<!-- ENDIF !disableChat -->
				</ul>
				<!-- ELSE -->
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil visible-xs-inline"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF loggedIn -->
				<!-- IF searchEnabled -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET" action="">
							<div class="hide" id="search-fields">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
						</form>
					</li>
					<li class="visible-xs">
						<a href="{relative_path}/search">
							<i class="fa fa-search fa-fw"></i> [[global:search]]
						</a>
					</li>
				</ul>
				<!-- ENDIF searchEnabled -->

				<ul class="nav navbar-nav navbar-right hidden-xs">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block invisible visible-lg visible-md">
					<li class="dropdown">
						<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
						<i class="fa fa-angle-up pointer fa-fw pageup"></i>

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span id="pagination"></span>
						</a>

						<i class="fa fa-angle-down pointer fa-fw pagedown"></i>
						<i class="fa fa-angle-double-down pointer fa-fw pagebottom"></i>

						<div class="progress-container">
							<div class="progress-bar"></div>
						</div>

						<ul class="dropdown-menu" role="menu">
  							<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
  						</ul>
					</li>
				</ul>

				<ul id="main-nav" class="nav navbar-nav">
					<!-- BEGIN navigation -->
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}" id="{navigation.id}"<!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- ENDIF function.displayMenuItem -->
					<!-- END navigation -->
				</ul>

				<!-- ELSE -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>