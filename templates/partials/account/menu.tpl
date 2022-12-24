<div class="btn-group account-fab bottom-sheet">
	<button type="button" class="persona-fab dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-end account-sub-links">
		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<!-- IF !banned -->
		<!-- IF !config.disableChat -->
		<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
			<a class="dropdown-item" component="account/chat" href="#">[[user:chat_with, {username}]]</a>
		</li>
		<li>
			<a class="dropdown-item" component="account/new-chat" href="#">[[user:new_chat_with, {username}]]</a>
		</li>
		<!-- ENDIF !config.disableChat -->
		<li>
			<a class="dropdown-item" component="account/flag" href="#">[[user:flag-profile]]</a>
		</li>
		<li>
			<a class="dropdown-item {{{ if ./isBlocked }}}hidden{{{ end }}}" component="account/block" href="#">[[user:block_user]]</a>
		</li>
		<li>
			<a class="dropdown-item {{{ if !./isBlocked }}}hidden{{{ end }}}" component="account/unblock" href="#">[[user:unblock_user]]</a>
		</li>
		<li role="separator" class="dropdown-divider"></li>
		<!-- ENDIF !banned -->
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
		<li>
			<a class="dropdown-item" href="{config.relative_path}/user/{userslug}" class="d-inline-block" id="profile">[[user:profile]]</a>
		</li>
		<!-- IF canEdit -->
		<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<!-- ENDIF canEdit -->

		<!-- IF !isSelf -->
		{{{ if (canBan || canMute) }}}
		<li role="separator" class="dropdown-divider"></li>
		<li class="dropdown-header">[[user:admin_actions_label]]</li>
		{{{ end }}}
		{{{ if canBan }}}
		<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
			<a class="dropdown-item" component="account/ban" href="#">[[user:ban_account]]</a>
		</li>
		<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
			<a class="dropdown-item" component="account/unban" href="#">[[user:unban_account]]</a>
		</li>
		{{{ end }}}
		{{{ if canMute }}}
		<li class="<!-- IF muted -->hide<!-- ENDIF muted -->">
			<a class="dropdown-item" component="account/mute" href="#">[[user:mute_account]]</a>
		</li>
		<li class="<!-- IF !muted -->hide<!-- ENDIF !muted -->">
			<a class="dropdown-item" component="account/unmute" href="#">[[user:unmute_account]]</a>
		</li>
		{{{ end }}}
		<!-- IF isAdmin -->
		<li>
			<a component="account/delete-account" href="#" class="dropdown-item">[[user:delete_account_as_admin]]</a>
			<a component="account/delete-content" href="#" class="dropdown-item">[[user:delete_content]]</a>
			<a component="account/delete-all" href="#" class="dropdown-item">[[user:delete_all]]</a>
		</li>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<li role="separator" class="dropdown-divider"></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/following">[[user:following]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.following}">{counts.following}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/followers">[[user:followers]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.followers}">{counts.followers}</span></a></li>
		<!-- IF canEdit -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/blocks">[[user:blocks]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.blocks}">{counts.blocks}</span></a></li>
		<!-- ENDIF canEdit -->
		<li role="separator" class="dropdown-divider"></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/topics">[[global:topics]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.topics}">{counts.topics}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/posts">[[global:posts]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.posts}">{counts.posts}</span></a></li>
		<!-- IF !reputation:disabled -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/best">[[global:best]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.best}">{counts.best}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/controversial">[[global:controversial]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.controversial}">{counts.controversial}</span></a></li>
		<!-- ENDIF !reputation:disabled -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.groups}">{counts.groups}</span></a></li>

		<!-- IF canEdit -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/categories">[[user:watched_categories]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.categoriesWatched}">{counts.categoriesWatched}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/bookmarks">[[user:bookmarks]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.bookmarks}">{counts.bookmarks}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/watched">[[user:watched]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.watched}">{counts.watched}</span></a></li>
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/ignored">[[user:ignored]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.ignored}">{counts.ignored}</span></a></li>
		<!-- IF !reputation:disabled -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.upvoted}">{counts.upvoted}</span></a></li>
		<!-- IF !downvote:disabled -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.downvoted}">{counts.downvoted}</span></a></li>
		<!-- ENDIF !downvote:disabled -->
		<!-- ENDIF !reputation:disabled -->
		<li><a class="dropdown-item d-flex justify-content-between align-items-center" href="{config.relative_path}/user/{userslug}/uploads">[[global:uploads]] <span class="badge bg-secondary formatted-number rounded-pill ms-2" title="{counts.uploaded}">{counts.uploaded}</span></a></li>
		<!-- ENDIF canEdit -->

		{{{each profile_links}}}
		<!-- IF @first -->
		<li role="separator" class="dropdown-divider"></li>
		<!-- ENDIF @first -->
		<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/{profile_links.route}"><!-- IF ../icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- END -->{profile_links.name}</a></li>
		{{{end}}}
	</ul>
</div>
