<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="recent">
	<div class="btn-toolbar">
		<div class="pull-left">
			<!-- IF canPost -->
			<div class="dropdown" component="category-selector">
				<label component="category/post" for="category-dropdown-check" class="btn btn-primary" data-toggle="dropdown" id="new_topic">
					[[category:new_topic_button]] <span class="caret"></span>
				</label>
				<input type="checkbox" class="hidden" id="category-dropdown-check" aria-hidden="true">
				<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
					{{{each categories}}}
					<li role="presentation" class="category {{{if categories.disabledClass}}}disabled{{{end}}}">
						<a role="menu-item" href="{config.relative_path}/compose?cid={categories.cid}">{categories.level}<span component="category-markup">{{{if categories.icon}}}<span class="fa-stack" style="{function.generateCategoryBackground}"><i style="color: {categories.color};" class="fa fa-stack-1x fa-fw {categories.icon}"></i></span>{{{end}}} {categories.name}</span></a>
					</li>
					{{{end}}}
				</ul>
			</div>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF canPost -->
			<a href="{config.relative_path}/{selectedFilter.url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>
		</div>

		<!-- IMPORT partials/category-filter.tpl -->

		<div class="btn-group pull-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			{selectedFilter.name} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				{{{each filters}}}
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				{{{end}}}
			</ul>
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
