<ul class="nav nav-pills">
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users?section=online">[[global:online]]</a></li>
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users?section=sort-posts">[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users?section=sort-reputation">[[users:most_reputation]]</a></li>
	<!-- ENDIF !reputation:disabled -->
	<!-- IF isAdminOrGlobalMod -->
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users?section=flagged">[[users:most_flags]]</a></li>
	<li class="nav-item"><a class="nav-link" href="{config.relative_path}/users?section=banned">[[user:banned]]</a></li>
	<!-- ENDIF isAdminOrGlobalMod -->
</ul>