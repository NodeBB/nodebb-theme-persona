<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-3">
	<h3 class="fw-semibold fs-4 mb-0">{{tx("global:posts")}}</h3>
	<div class="d-flex flex-wrap gap-1">
		<a href="{config.relative_path}/user/{userslug}/posts" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/posts }}}active{{{ end }}}">{{tx("global:header.recent")}}</a>
		{{{ if !reputation:disabled }}}
		<a href="{config.relative_path}/user/{userslug}/best"class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/best }}}active{{{ end }}}">{{tx("global:best")}}</a>
		<a href="{config.relative_path}/user/{userslug}/controversial" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/controversial }}}active{{{ end }}}">{{tx("global:controversial")}}</a>
		{{{ if canEdit }}}
		<a href="{config.relative_path}/user/{userslug}/upvoted" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/upvoted }}}active{{{ end }}}">{{tx("global:upvoted")}}</a>
		{{{ if !downvote:disabled }}}
		<a href="{config.relative_path}/user/{userslug}/downvoted" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/downvoted }}}active{{{ end }}}">{{tx("global:downvoted")}}</a>
		{{{ end }}}
		{{{ end }}}
		{{{ end }}}
		{{{ if canEdit }}}
		<a href="{config.relative_path}/user/{userslug}/bookmarks" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/bookmarks }}}active{{{ end }}}">{{tx("user:bookmarks")}}</a>
		{{{ end }}}
	</div>
</div>

<!-- IF !posts.length -->
	<div class="alert alert-warning text-center">{{tx(noItemsFoundKey)}}</div>
<!-- ENDIF !posts.length -->

<div class="col-12">
	<!-- IMPORT partials/posts_list.tpl -->

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>

<!-- IMPORT partials/account/footer.tpl -->