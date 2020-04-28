<div class="btn-group account-fab bottom-sheet">
	<button type="button" class="fab dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<!-- IF !banned -->
		<!-- IF !config.disableChat -->
		<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
			<a data-component="account/chat" href="#">[[user:chat-with, {username}]]</a>
		</li>
		<li>
			<a data-component="account/new-chat" href="#">[[user:new-chat-with, {username}]]</a>
		</li>
		<!-- ENDIF !config.disableChat -->
		<li>
			<a data-component="account/flag" href="#">[[user:flag-profile]]</a>
		</li>
		<li>
			<a data-component="account/block" href="#"><!-- IF !../isBlocked -->[[user:block-user]]<!-- ELSE -->[[user:unblock-user]]<!-- END --></a>
		</li>
		<li class="divider"></li>
		<!-- ENDIF !banned -->
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
		<li>
			<a href="{config.relative_path}/user/{userslug}" class="inline-block" id="profile">[[user:profile]]</a>
		</li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<!-- ENDIF showHidden -->

		<!-- IF !isSelf -->
		<!-- IF canBan -->
		<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
			<a data-component="account/ban" href="#">[[user:ban-account]]</a>
		</li>
		<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
			<a data-component="account/unban" href="#">[[user:unban-account]]</a>
		</li>
		<!-- ENDIF canBan -->
		<!-- IF isAdmin -->
		<li>
			<a data-component="account/delete" href="#" class="">[[user:delete-account]]</a>
		</li>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<li class="divider"></li>
		<li><a href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/blocks">[[user:blocks]]</a></li>
		<!-- ENDIF showHidden -->
		<li class="divider"></li>
		<li><a href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
		<!-- IF !reputation:disabled -->
		<li><a href="{config.relative_path}/user/{userslug}/best">[[global:best]]</a></li>
		<!-- ENDIF !reputation:disabled -->
		<li><a href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]]</a></li>

		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/categories">[[user:watched-categories]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/bookmarks">[[user:bookmarks]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/watched">[[user:watched]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/ignored">[[user:ignored]]</a></li>
		<!-- IF !reputation:disabled -->
		<li><a href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]]</a></li>
		<!-- IF !downvote:disabled -->
		<li><a href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]]</a></li>
		<!-- ENDIF !downvote:disabled -->
		<!-- ENDIF !reputation:disabled -->
		<li><a href="{config.relative_path}/user/{userslug}/uploads">[[global:uploads]]</a></li>
		<!-- ENDIF showHidden -->

		{{{each profile_links}}}
		<!-- IF @first -->
		<li class="divider"></li>
		<!-- ENDIF @first -->
		<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userslug}/{profile_links.route}"><!-- IF ../icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- END -->{profile_links.name}</a></li>
		{{{end}}}
	</ul>
</div>
