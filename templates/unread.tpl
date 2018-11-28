<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="unread">
	<div class="btn-toolbar">
		<div class="pull-left">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
			<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>
		</div>
		<div class="markread btn-group pull-right category-dropdown-container bottom-sheet<!-- IF !topics.length --> hidden<!-- ENDIF !topics.length -->">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				[[unread:mark_as_read]] <span class="caret"></span>
			</button>
			<ul class="dropdown-menu category-dropdown-menu" role="menu">

				<li role="presentation">
					<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
				</li>

				<li role="presentation">
					<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
				</li>
				<li class="divider"></li>
				<!-- BEGIN categories -->
				<li role="presentation" class="category" data-cid="{categories.cid}">
					<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
				</li>
				<!-- END categories -->
			</ul>
		</div>

		<!-- IMPORT partials/category-filter.tpl -->

		<div class="btn-group pull-right bottom-sheet">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			{selectedFilter.name} <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<!-- BEGIN filters -->
				<li role="presentation" class="category">
					<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
				</li>
				<!-- END filters -->
			</ul>
		</div>
	</div>

	<hr class="hidden-xs"/>

	<div class="category">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
