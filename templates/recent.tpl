<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="recent">
	<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 gap-1">
		<div class="d-flex gap-1 align-items-stretch">
			{{{ if canPost }}}
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			{{{ else }}}
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			{{{ end }}}
			<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="d-inline-block">
				<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex gap-1 align-items-center hide" id="new-topics-alert"><i class="fa fa-fw fa-rotate-right"></i>[[recent:load-new-posts]]</div>
			</a>
		</div>
		<div class="d-flex gap-1 align-items-stretch">
		<!-- IMPORT partials/topic-filters.tpl -->
		<!-- IMPORT partials/category/filter-dropdown-right.tpl -->
		<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no-recent-topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
