<li id="user_label" class="nav-item dropdown" title="[[global:header.profile]]">
	<a href="#" for="user-control-list-check" data-bs-toggle="dropdown" id="user_dropdown" role="button" component="header/avatar" aria-haspopup="true" aria-expanded="false">
		{buildAvatar(user, "32px", true)}
		<span id="user-header-name" class="d-block d-sm-none">{user.username}</span>
	</a>
	<input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
	<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu dropdown-menu-end" aria-labelledby="user_dropdown" role="menu">
		<li>
			<a class="dropdown-item" component="header/profilelink" href="{relative_path}/user/{user.userslug}" role="menuitem">
				<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
			</a>
		</li>
		<li role="presentation" class="dropdown-divider"></li>
		<li><h6 class="dropdown-header">[[global:status]]</h6></li>
		<li>
			<a href="#" class="dropdown-item user-status {{{ if user.online }}}selected{{{ end }}}" data-status="online" role="menuitem">
				<i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status {{{ if user.away }}}selected{{{ end }}}" data-status="away" role="menuitem">
				<i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status {{{ if user.dnd }}}selected{{{ end }}}" data-status="dnd" role="menuitem">
				<i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
			</a>
		</li>
		<li>
			<a href="#" class="dropdown-item user-status {{{ if user.offline }}}selected{{{ end }}}" data-status="offline" role="menuitem">
				<i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
			</a>
		</li>
		<li role="presentation" class="dropdown-divider"></li>
		<li>
			<a class="dropdown-item" href="{relative_path}/user/{user.userslug}/bookmarks" role="menuitem">
				<i class="fa fa-fw fa-bookmark"></i> <span>[[user:bookmarks]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit" role="menuitem">
				<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings" role="menuitem">
				<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
			</a>
		</li>
		{{{ if showModMenu }}}
		<li role="presentation" class="dropdown-divider"></li>
		<li><h6 class="dropdown-header">[[pages:moderator-tools]]</h6></li>
		<li>
			<a class="dropdown-item" href="{relative_path}/flags" role="menuitem">
				<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue" role="menuitem">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
			</a>
		</li>
		{{{ if registrationQueueEnabled }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/registration-queue" role="menuitem">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:registration-queue]]</span>
			</a>
		</li>
		{{{ end }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/ip-blacklist" role="menuitem">
				<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
			</a>
		</li>
		{{{ else }}}
		{{{ if postQueueEnabled }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue" role="menuitem">
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
				<button type="submit" class="dropdown-item" role="menuitem">
					<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
				</button>
			</form>
		</li>
	</ul>
</li>