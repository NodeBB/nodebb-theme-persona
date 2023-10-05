<ul component="user/list/menu" class="nav nav-pills">
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=online">[[global:online]]</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=sort-posts">[[users:top-posters]]</a>
	</li>
	{{{ if !reputation:disabled }}}
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=sort-reputation">[[users:most-reputation]]</a>
	</li>
	{{{ end }}}
	{{{ if isAdminOrGlobalMod }}}
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=flagged">[[users:most-flags]]</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="{config.relative_path}/users?section=banned">[[user:banned]]</a>
	</li>
	{{{ end }}}
</ul>