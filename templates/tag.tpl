<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="tag">
	<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 gap-1">
		<div class="d-flex gap-1 align-items-stretch">
			{{{ if loggedIn }}}
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			{{{ else }}}
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			{{{ end }}}
		</div>
		<div class="d-flex gap-1 align-items-stretch">
		<!-- IMPORT partials/tags/watch.tpl -->
		<!-- IMPORT partials/category/filter-dropdown-right.tpl -->
		<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

	<div class="category">
		{{{ if !topics.length }}}
		<div class="alert alert-warning">[[tags:no-tag-topics]]</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load-more]]</button>
		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
