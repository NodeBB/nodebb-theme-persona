<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="tag">
	<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 gap-1 flex-nowrap overflow-auto">
		<div class="d-flex gap-1 align-items-stretch">
			<!-- IF loggedIn -->
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
		<div class="d-flex gap-1 align-items-stretch">
		<!-- IMPORT partials/category-filter-right.tpl -->
		<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning">[[tags:no_tag_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
