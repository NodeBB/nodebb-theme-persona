<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="recent">
	<div class="topic-list-header btn-toolbar justify-content-between">
		<div class="btn-group">
			<!-- IF canPost -->
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF canPost -->
			<a href="{config.relative_path}/{selectedFilter.url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>
		</div>
		<div>
			<div class="btn-group bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
				<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown">
					<span class="visible-sm-inline visible-md-inline visible-lg-inline">{selectedFilter.name}</span><span class="visible-xs-inline"><i class="fa fa-fw {selectedFilter.icon}"></i></span> <span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-end" role="menu">
					{{{each filters}}}
					<li role="presentation" class="category {{{if filters.selected}}}selected{{{end}}}">
						<a class="dropdown-item" role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					{{{end}}}
				</ul>
			</div>

			<div class="btn-group">
			<!-- IMPORT partials/category-filter-right.tpl -->
			</div>

			<!-- IMPORT partials/category/tools.tpl -->
		</div>
	</div>

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
