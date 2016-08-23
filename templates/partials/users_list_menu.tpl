<ul class="nav nav-pills">
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users/online">[[global:online]]</a></li>
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users/sort-posts">[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users/sort-reputation">[[users:most_reputation]]</a></li>
	<!-- ENDIF !reputation:disabled -->
	<!-- IF isAdminOrGlobalMod -->
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users/flagged">[[users:most_flags]]</a></li>
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users/banned">[[user:banned]]</a></li>
	<!-- ENDIF isAdminOrGlobalMod -->
</ul>