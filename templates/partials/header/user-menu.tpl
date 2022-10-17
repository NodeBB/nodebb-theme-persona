<li id="user_label" class="nav-item dropdown" title="[[global:header.profile]]">
	<label for="user-control-list-check" class="" data-bs-toggle="dropdown" id="user_dropdown" role="button">
		{buildAvatar(user, "32px", true)}
		<span id="user-header-name" class="d-block d-sm-none">{user.username}</span>
	</label>
	<input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
	<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu dropdown-menu-end" aria-labelledby="user_dropdown">
		<li>
			<a class="dropdown-item" component="header/profilelink" href="{relative_path}/user/{user.userslug}">
				<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
			</a>
		</li>
		<li role="presentation" class="dropdown-divider"></li>
		<li><h6 class="dropdown-header">[[global:status]]</h6></li>
		<li>
			<a href="#" class="dropdown-item user-status" data-status="online">
				<i class="fa fa-fw fa-circle status online"></i><span <!-- IF user.online -->class="bold"<!-- ENDIF user.online -->> [[global:online]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status" data-status="away">
				<i class="fa fa-fw fa-circle status away"></i><span <!-- IF user.away -->class="bold"<!-- ENDIF user.away -->> [[global:away]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status" data-status="dnd">
				<i class="fa fa-fw fa-circle status dnd"></i><span <!-- IF user.dnd -->class="bold"<!-- ENDIF user.dnd -->> [[global:dnd]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status" data-status="offline">
				<i class="fa fa-fw fa-circle status offline"></i><span <!-- IF user.offline -->class="bold"<!-- ENDIF user.offline -->> [[global:invisible]]</span>
			</a>
		</li>
		<li role="presentation" class="dropdown-divider"></li>
		<li>
			<a class="dropdown-item" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
				<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
				<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
			</a>
		</li>
		{{{ if showModMenu }}}
		<li role="presentation" class="dropdown-divider"></li>
		<li><h6 class="dropdown-header">[[pages:moderator-tools]]</h6></li>
		<li>
			<a class="dropdown-item" href="{relative_path}/flags">
				<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" href="{relative_path}/ip-blacklist">
				<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
			</a>
		</li>
		{{{ else }}}
		{{{ if postQueueEnabled }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
			</a>
		</li>
		{{{ end }}}
		{{{ end }}}

		<li role="presentation" class="dropdown-divider"></li>
		<li component="user/logout">
			<form method="post" action="{relative_path}/logout">
				<input type="hidden" name="_csrf" value="{config.csrf_token}">
				<input type="hidden" name="noscript" value="true">
				<button type="submit" class="dropdown-item">
					<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
				</button>
			</form>
		</li>
	</ul>
</li>