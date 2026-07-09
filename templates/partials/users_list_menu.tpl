<div component="user/list/menu" class="text-sm d-flex flex-wrap align-items-center gap-2">
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=online">{{tx("global:online")}}</a>

	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=sort-posts">{{tx("users:top-posters")}}</a>

	{{{ if !reputation:disabled }}}
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=sort-reputation">{{tx("users:most-reputation")}}</a>
	{{{ end }}}

	{{{ if isAdminOrGlobalMod }}}
	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=flagged">{{tx("users:most-flags")}}</a>

	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=banned">{{tx("user:banned")}}</a>

	<a class="btn btn-ghost btn-sm ff-secondary" href="{config.relative_path}/users?section=muted">{{tx("user:muted")}}</a>
	{{{ end }}}
</div>