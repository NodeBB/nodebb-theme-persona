<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="recent">
	<div class="clearfix">
		<div class="float-left">
			<!-- IF canPost -->
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			<!-- ELSE -->
			<a data-component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF canPost -->
			<a href="{config.relative_path}/{selectedFilter.url}" class="d-inline-block">
				<div id="new-topics-alert" class="alert alert-warning hidden"></div>
			</a>
		</div>

		<!-- IMPORT partials/category-filter.tpl -->

		<div class="btn-group float-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
			<button type="button" class="btn btn-default" data-toggle="dropdown">
			{selectedFilter.name} <i class="fa fa-chevron-down"></i>
			</button>
			<div class="dropdown-menu" role="menu">
				{{{each filters}}}
				<a class="dropdown-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				{{{end}}}
			</div>
		</div>
	</div>

	<hr class="hidden-xs"/>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
