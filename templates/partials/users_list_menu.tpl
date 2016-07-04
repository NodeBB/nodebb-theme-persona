<ul class="nav nav-pills">
	<li><a href="{config.relative_path}/users/online">[[global:online]]</a></li>
	<li><a href="{config.relative_path}/users/sort-posts">[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<li><a href="{config.relative_path}/users/sort-reputation">[[users:most_reputation]]</a></li>
	<!-- ENDIF !reputation:disabled -->
	<!-- IF isAdminOrGlobalMod -->
	<li><a href="{config.relative_path}/users/flagged">[[users:most_flags]]</a></li>
	<li><a href="{config.relative_path}/users/banned">[[user:banned]]</a></li>
	<!-- ENDIF isAdminOrGlobalMod -->
</ul>