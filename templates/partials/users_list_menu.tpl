<ul class="nav nav-pills">
	<li><a href='{config.relative_path}/users/online'>[[global:online]]</a></li>
	<li><a href='{config.relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<li><a href='{config.relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>
	<!-- ENDIF !reputation:disabled -->
	<!-- IF function.displayUserSearch, {config.allowGuestUserSearching} -->
	<li><a href='{config.relative_path}/users/search'>[[users:search]]</a></li>
	<!-- ENDIF function.displayUserSearch -->
	<!-- IF inviteOnly -->
	<!-- IF loggedIn -->
	<button component="user/invite" class="btn btn-success pull-right"><i class="fa fa-users"></i> [[users:invite]]</button>
	<!-- ENDIF loggedIn -->
	<!-- ENDIF inviteOnly -->
</ul>