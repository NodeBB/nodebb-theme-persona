<div class="btn-group account-fab">
	<button type="button" class="fab dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<!-- IF !isSelf -->
		<!-- IF !config.disableChat -->
		<!-- IF !banned -->
		<li class="dropdown-item">
			<a component="account/chat" href="#">[[user:chat_with, {username}]]</a>
		</li>
		<div class="dropdown-divider"></div>
		<!-- ENDIF !banned -->
		<!-- ENDIF !config.disableChat -->
		<!-- ENDIF !isSelf -->
		<li class="dropdown-item">
			<a href="{config.relative_path}/user/{userslug}" class="inline-block" id="profile">[[user:profile]]</a>
		</li>
		<!-- IF showHidden -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/info">[[user:account_info]] <i class="fa fa-lock"></i></a></li>
		<!-- ENDIF showHidden -->

		<!-- IF !isSelf -->
		<!-- IF canBan -->
		<li class="dropdown-item <!-- IF banned -->hide<!-- ENDIF banned -->">
			<a component="account/ban" href="#">[[user:ban_account]]</a>
		</li>
		<li class="dropdown-item <!-- IF !banned -->hide<!-- ENDIF !banned -->">
			<a component="account/unban" href="#">[[user:unban_account]]</a>
		</li>
		<!-- ENDIF canBan -->
		<!-- IF isAdmin -->
		<li class="dropdown-item">
			<a component="account/delete" href="#" class="">[[user:delete_account]]</a>
		</li>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<div class="dropdown-divider"></div>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li>
		<div class="dropdown-divider"></div>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a></li>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
		<!-- IF !reputation:disabled -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/best">[[global:best]]</a></li>
		<!-- ENDIF !reputation:disabled -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]]</a></li>

		<!-- IF showHidden -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/favourites">[[user:favourites]]</a></li>
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/watched">[[user:watched]]</a></li>
		<!-- IF !reputation:disabled -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]]</a></li>
		<!-- IF !downvote:disabled -->
		<li class="dropdown-item"><a href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]]</a></li>
		<!-- ENDIF !downvote:disabled -->
		<!-- ENDIF !reputation:disabled -->
		<!-- ENDIF showHidden -->

		<!-- BEGIN profile_links -->
		<div class="dropdown-divider"></div>
		<li id="{profile_links.id}" class="dropdown-item plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userslug}/{profile_links.route}"><i class="fa fa-fw {profile_links.icon}"></i> {profile_links.name}</a></li>
		<!-- END profile_links -->
	</ul>
</div>