<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="popular">
	<div class="topic-list-header text-bg-light sticky-top btn-toolbar justify-content-between align-items-center p-1 mb-2 gap-1">
		<div class="d-flex gap-1">
			{{{ if canPost }}}
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			{{{ else }}}
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary btn-sm">[[category:guest-login-post]]</a>
			{{{ end }}}
		</div>
		<div class="d-flex gap-1">
		<!-- IMPORT partials/topic-terms.tpl -->
		<!-- IMPORT partials/topic-filters.tpl -->
		<!-- IMPORT partials/category/filter-dropdown-right.tpl -->
		<!-- IMPORT partials/category/tools-dropdown-right.tpl -->
		</div>
	</div>

	<div class="category">
		{{{ if !topics.length }}}
		<div class="alert alert-warning" id="category-no-topics">[[recent:no-popular-topics]]</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
