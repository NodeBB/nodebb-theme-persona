<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="top">
	<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 gap-1 flex-nowrap overflow-auto">
		<div class="d-flex gap-1 align-items-stretch">
			{{{ if canPost }}}
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			{{{ else }}}
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			{{{ end }}}
		</div>
		<div class="d-flex gap-1 align-items-stretch">
		<!-- IMPORT partials/topic-terms.tpl -->
		<!-- IMPORT partials/topic-filters.tpl -->
		<!-- IMPORT partials/category-filter-right.tpl -->
		<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[top:no_top_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
