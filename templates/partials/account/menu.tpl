<div class="btn-group account-fab">
	<button type="button" class="fab dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<div class="dropdown-menu dropdown-menu-right">
		<!-- IF !isSelf -->
		<!-- IF !config.disableChat -->
		<!-- IF !banned -->
		<a class="dropdown-item" component="account/chat" href="#">[[user:chat_with, {username}]]</a>
		
		<div class="dropdown-divider"></div>
		<!-- ENDIF !banned -->
		<!-- ENDIF !config.disableChat -->
		<!-- ENDIF !isSelf -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}" id="profile">[[user:profile]]</a>

		<!-- IF showHidden -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/info">[[user:account_info]] <i class="fa fa-lock"></i></a>
		<!-- ENDIF showHidden -->

		<!-- IF !isSelf -->
		<!-- IF canBan -->
		<a class="dropdown-item <!-- IF banned -->hidden-xs-up<!-- ENDIF banned -->" component="account/ban" href="#">[[user:ban_account]]</a>
		<a class="dropdown-item <!-- IF !banned -->hidden-xs-up<!-- ENDIF !banned -->" component="account/unban" href="#">[[user:unban_account]]</a>
		<!-- ENDIF canBan -->
		<!-- IF isAdmin -->
		<a class="dropdown-item" component="account/delete" href="#" class="">[[user:delete_account]]</a>
		<!-- ENDIF isAdmin -->
		<!-- ENDIF !isSelf -->

		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a>
		<!-- IF !reputation:disabled -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/best">[[global:best]]</a>
		<!-- ENDIF !reputation:disabled -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]]</a>

		<!-- IF showHidden -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/favourites">[[user:favourites]]</a>
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/watched">[[user:watched]]</a>
		<!-- IF !reputation:disabled -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]]</a>
		<!-- IF !downvote:disabled -->
		<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]]</a>
		<!-- ENDIF !downvote:disabled -->
		<!-- ENDIF !reputation:disabled -->
		<!-- ENDIF showHidden -->

		<!-- BEGIN profile_links -->
		<div class="dropdown-divider"></div>
		<a id="{profile_links.id}" class="dropdown-item plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->" href="{config.relative_path}/user/{userslug}/{profile_links.route}"><i class="fa fa-fw {profile_links.icon}"></i> {profile_links.name}</a>
		<!-- END profile_links -->
	</div>
</div>