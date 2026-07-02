<div class="dropdown account-fab bottom-sheet">
	<button type="button" class="persona-fab dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-end account-sub-links p-1" role="menu">
		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<!-- IF !banned -->
		<!-- IF canChat -->
		<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
			<a class="dropdown-item rounded-1" component="account/chat" href="#" role="menuitem">{{tx("user:chat-with", txEscape(username))}}</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1" component="account/new-chat" href="#" role="menuitem">{{tx("user:new-chat-with", txEscape(username))}}</a>
		</li>
		<!-- ENDIF canChat -->
		<li>
			<a {{{if flagId }}}hidden{{{end}}} class="dropdown-item rounded-1" component="account/flag" href="#" role="menuitem">{{tx("user:flag-profile")}}</a>
		</li>
		<li>
			<a {{{if !flagId }}}hidden{{{end}}} class="dropdown-item rounded-1" component="account/already-flagged" href="#" role="menuitem" data-flag-id="{flagId}">{{tx("user:profile-flagged")}}</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1 {{{ if ./isBlocked }}}hidden{{{ end }}}" component="account/block" href="#" role="menuitem">{{tx("user:block-user")}}</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1 {{{ if !./isBlocked }}}hidden{{{ end }}}" component="account/unblock" href="#" role="menuitem">{{tx("user:unblock-user")}}</a>
		</li>
		<li role="separator" class="dropdown-divider"></li>
		<!-- ENDIF !banned -->
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
		<li>
			<a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}" class="d-inline-block" id="profile" role="menuitem">{{tx("user:profile")}}</a>
		</li>
		<!-- IF canEdit -->
		<li><a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/edit" role="menuitem">{{tx("user:edit")}}</a></li>
		<li><a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/settings" role="menuitem">{{tx("user:settings")}}</a></li>
		<!-- ENDIF canEdit -->

		<!-- IF !isSelf -->
		{{{ if (canBan || canMute) }}}
		<li role="separator" class="dropdown-divider"></li>
		<li class="dropdown-header">{{tx("user:admin-actions-label")}}</li>
		{{{ end }}}
		{{{ if canBan }}}
		<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
			<a class="dropdown-item rounded-1" component="account/ban" href="#" role="menuitem">{{tx("user:ban-account")}}</a>
		</li>
		<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
			<a class="dropdown-item rounded-1" component="account/unban" href="#" role="menuitem">{{tx("user:unban-account")}}</a>
		</li>
		{{{ end }}}
		{{{ if canMute }}}
		<li class="<!-- IF muted -->hide<!-- ENDIF muted -->">
			<a class="dropdown-item rounded-1" component="account/mute" href="#" role="menuitem">{{tx("user:mute-account")}}</a>
		</li>
		<li class="<!-- IF !muted -->hide<!-- ENDIF !muted -->">
			<a class="dropdown-item rounded-1" component="account/unmute" href="#" role="menuitem">{{tx("user:unmute-account")}}</a>
		</li>
		{{{ end }}}
		<!-- IF isAdmin -->
		<li>
			<a component="account/delete-account" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-account-as-admin")}}</a>
			<a component="account/delete-content" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-content")}}</a>
			<a component="account/delete-all" href="#" class="dropdown-item rounded-1" role="menuitem">{{tx("user:delete-all")}}</a>
		</li>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<li role="separator" class="dropdown-divider"></li>
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/following" role="menuitem">{{tx("user:following")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.following}">{formattedNumber(counts.following)}</span></a></li>
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/followers" role="menuitem">{{tx("user:followers")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.followers}">{formattedNumber(counts.followers)}</span></a></li>
		<!-- IF canEdit -->
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/blocks" role="menuitem">{{tx("user:blocks")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.blocks}">{formattedNumber(counts.blocks)}</span></a></li>
		<!-- ENDIF canEdit -->
		<li role="separator" class="dropdown-divider"></li>
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/topics" role="menuitem">{{tx("global:topics")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.topics}">{formattedNumber(counts.topics)}</span></a></li>
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/posts" role="menuitem">{{tx("global:posts")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.posts}">{formattedNumber(counts.posts)}</span></a></li>

		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/groups" role="menuitem">{{tx("global:header.groups")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.groups}">{formattedNumber(counts.groups)}</span></a></li>

		<!-- IF canEdit -->
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/categories" role="menuitem">{{tx("user:watched-categories")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.categoriesWatched}">{formattedNumber(counts.categoriesWatched)}</span></a></li>
		{{{ if isSelf }}}
		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/tags" role="menuitem">
		{{tx("user:watched-tags")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.tagsWatched}">{formattedNumber(counts.tagsWatched)}</span></a></li>
		{{{ end }}}

		<li><a class="dropdown-item rounded-1 d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/uploads" role="menuitem">{{tx("global:uploads")}} <span class="badge bg-secondary rounded-pill ms-2" title="{counts.uploaded}">{formattedNumber(counts.uploaded)}</span></a></li>
		<!-- ENDIF canEdit -->

		{{{ each profile_links }}}
		<!-- IF @first -->
		<li role="separator" class="dropdown-divider"></li>
		<!-- ENDIF @first -->
		<li id="{./id}" class="plugin-link {{{ if ./public }}}public{{{ else }}}private{{{ end }}}"><a class="dropdown-item rounded-1" href="{config.relative_path}/user/{userslug}/{profile_links.route}">{{{ if icon }}}<i class="fa fa-fw {./icon}"></i> {{{ end }}}{{tx(./name)}}</a></li>
		{{{ end }}}
	</ul>
</div>
