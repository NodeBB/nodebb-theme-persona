	            <div class="navbar-header">
					<button type="button" class="navbar-toggler hidden-sm-up pull-xs-right" data-toggle="collapse" id="mobile-menu">
						&#9776;
					</button>
					
	                <a href="<!-- IF brand:logo:url -->{brand:logo:url}<!-- ELSE -->{relative_path}/<!-- ENDIF brand:logo:url -->">
						<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo" src="{brand:logo}" />
					</a>
					<!-- IF config.showSiteTitle -->
					<a class="navbar-brand" href="{relative_path}/">{title}</a>
					<!-- ENDIF config.showSiteTitle -->
				</div>
				
				<div id="nav-dropdown" class="hidden-sm-down">
    				<!-- IF !maintenanceHeader -->
    				<!-- IF config.loggedIn -->
    				<ul id="logged-in-menu" class="nav navbar-nav pull-xs-right">
    				    <li id="user_label" class="dropdown">
    				    	<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
								<img component="header/userpicture" src="{user.picture}" alt="{user.username}"<!-- IF !user.picture --> style="display: none;"<!-- ENDIF !user.picture --> />
								<div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture --> display: none;"<!-- ENDIF user.picture -->">{user.icon:text}</div>
								<span id="user-header-name" class="hidden-md-up">{user.username}</span>
							</a>
							<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu dropdown-menu-right" aria-labelledby="user_dropdown">
								<li class="dropdown-item">
									<a component="header/profilelink" href="{relative_path}/user/{user.userslug}">
										<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
									</a>
								</li>
								<div class="dropdown-divider"></div>
								<li class="dropdown-item">
									<a href="#" class="user-status" data-status="online">
										<i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
									</a>
								</li>
								<li class="dropdown-item">
									<a href="#" class="user-status" data-status="away">
										<i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
									</a>
								</li>
								<li class="dropdown-item">
									<a href="#" class="user-status" data-status="dnd">
										<i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
									</a>
								</li>
								<li class="dropdown-item">
									<a href="#" class="user-status" data-status="offline">
										<i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
									</a>
								</li>
								<div class="dropdown-divider"></div>
								<li class="dropdown-item">
									<a href="{relative_path}/user/{user.userslug}/edit">
										<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
									</a>
								</li>
								<li class="dropdown-item">
									<a href="{relative_path}/user/{user.userslug}/settings">
										<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
									</a>
								</li>
								<div class="dropdown-divider"></div>
								<li class="dropdown-item" component="user/logout">
									<a href="#"><i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span></a>
								</li>
							</ul>
    					</li>
    				</ul>
    				<ul id="logged-in-menu" class="nav navbar-nav pull-xs-right">
						<li class="notifications dropdown text-xs-center hidden-sm-down nav-item" component="notifications">
							<a href="#" title="[[global:header.notifications]]" class="dropdown-toggle nav-link" data-toggle="dropdown" id="notif_dropdown">
								<i component="notifications/icon" class="fa fa-fw fa-bell-o" data-content="0"></i>
							</a>
							<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="notif_dropdown">
								<li>
									<ul component="notifications/list" class="notification-list">
										<li>
											<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-item notif-dropdown-link"><a href="#" class="mark-all-read">[[notifications:mark_all_read]]</a></li>
								<li class="dropdown-item notif-dropdown-link"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></li>
							</ul>
						</li>
	
						<!-- IF !config.disableChat -->
						<li class="chats dropdown nav-item m-r-2">
							<a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" title="[[global:header.chats]]" id="chat_dropdown" component="chat/dropdown">
								<i component="chat/icon" class="fa fa-comment-o fa-fw"></i> <span class="hidden-md-up">[[global:header.chats]]</span>
							</a>
							<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="chat_dropdown">
								<li>
									<ul component="chat/list" class="chat-list">
										<li>
											<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
										</li>
									</ul>
								</li>
								<li class="notif-dropdown-link"><a href="#" class="mark-all-read" component="chats/mark-all-read">[[modules:chat.mark_all_read]]</a></li>
								<li class="notif-dropdown-link"><a href="{relative_path}/chats">[[modules:chat.see_all]]</a></li>
							</ul>
						</li>
						<!-- ENDIF !config.disableChat -->
					</ul>
					<!-- ELSE -->
					<ul id="logged-out-menu" class="nav navbar-nav pull-xs-right">
						<!-- IF allowRegistration -->
						<li class="nav-item">
							<a class="nav-link" href="{relative_path}/register">
								<i class="fa fa-pencil hidden-md-up"></i>
								<span>[[global:register]]</span>
							</a>
						</li>
						<!-- ENDIF allowRegistration -->
						<li class="nav-item">
							<a class="nav-link" href="{relative_path}/login">
								<i class="fa fa-sign-in hidden-md-up"></i>
								<span>[[global:login]]</span>
							</a>
						</li>
					</ul>
    				<!-- ENDIF config.loggedIn -->
    				
    				<!-- IF config.searchEnabled -->
					<ul class="nav navbar-nav pull-xs-right">
						<li>
							<form id="search-form" class="navbar-form pull-xs-right hidden-sm-down" role="search" method="GET" action="">
								<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw"></i></button>
								<div class="hidden-xs-up" id="search-fields">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
										<a href="#"><i class="fa fa-gears fa-fw advanced-search-link"></i></a>
									</div>
									<button type="submit" class="btn btn-secondary hide">[[global:search]]</button>
								</div>
							</form>
						</li>
						<li class="hidden-md-up" id="search-menu">
							<a href="{relative_path}/search">
								<i class="fa fa-search fa-fw"></i> [[global:search]]
							</a>
						</li>
					</ul>
					<!-- ENDIF config.searchEnabled -->
    				
    				<ul class="nav navbar-nav pull-xs-right hidden-sm-down">
						<li class="nav-item">
							<a href="#" id="reconnect" class="nav-link hide" title="Connection to {title} has been lost, attempting to reconnect...">
								<i class="fa fa-check"></i>
							</a>
						</li>
					</ul>
					
					<ul class="nav navbar-nav pull-xs-right pagination-block hidden-md-down">
						<li class="dropdown">
							<i class="fa fa-angle-double-up pointer fa-fw pagetop"></i>
							<i class="fa fa-angle-up pointer fa-fw pageup"></i>
	
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span class="pagination-text"></span>
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
    					<li class="nav-item {navigation.class}">
    						<a class="nav-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
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
    							<i class="fa fa-sign-in hidden-sm-down"></i>
    							<span>[[global:login]]</span>
    						</a>
    					</li>
    				</ul>
    				<!-- ENDIF !maintenanceHeader -->
				</div>