<div component="user/list/menu" class="text-sm d-flex flex-wrap align-items-center gap-2">
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=online">[[global:online]]</a>

	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=sort-posts">[[users:top-posters]]</a>

	{{{ if !reputation:disabled }}}
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=sort-reputation">[[users:most-reputation]]</a>
	{{{ end }}}

	{{{ if isAdminOrGlobalMod }}}
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=flagged">[[users:most-flags]]</a>

	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=banned">[[user:banned]]</a>
	{{{ end }}}
</div>