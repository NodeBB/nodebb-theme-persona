<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="unread">
	<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 gap-1 flex-nowrap overflow-auto">
		<div class="d-flex gap-1 align-items-stretch">
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="d-inline-block">
				<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex align-items-center hide" id="new-topics-alert"></div>
			</a>
		</div>

		<div class="d-flex gap-1 align-items-stretch">
		<!-- IMPORT partials/topic-filters.tpl -->
		<!-- IMPORT partials/category-filter-right.tpl -->

		<div class="markread btn-group {{{ if !topics.length }}}hidden{{{ end }}}">
			<!-- IMPORT partials/category-selector-right.tpl -->
		</div>

		<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

	<div class="category">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
