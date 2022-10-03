<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="category <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<div class="topic-list-header sticky-top btn-toolbar justify-content-between py-2 mb-2 flex-nowrap">
			<div class="d-flex gap-1 align-items-stretch">
				<!-- IF privileges.topics:create -->
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary text-nowrap" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				<!-- ELSE -->
					<!-- IF !loggedIn -->
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF !loggedIn -->
				<!-- ENDIF privileges.topics:create -->

				<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="d-inline-block">
					<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex align-items-center hide" id="new-topics-alert"></div>
				</a>
			</div>
			<div class="d-flex gap-1 align-items-stretch">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->
			</div>
		</div>

		<!-- IF !topics.length -->
		<!-- IF privileges.topics:create -->
		<hr class="visible-xs" />
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		<!-- ENDIF privileges.topics:create -->
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
