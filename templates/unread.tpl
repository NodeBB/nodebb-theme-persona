<div class="unread">

	<div class="clearfix">
		<div class="pull-xs-left">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
		<div class="btn-toolbar">
			<div class="markread btn-group pull-xs-right<!-- IF !topics.length --> hidden-xs-up<!-- ENDIF !topics.length -->">
				<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
					[[unread:mark_as_read]]
				</button>
				<ul class="dropdown-menu" role="menu">

					<li class="dropdown-item" role="presentation">
						<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
					</li>

					<li class="dropdown-item" role="presentation">
						<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
					</li>
					<div class="dropdown-divider"></div>
					<!-- BEGIN categories -->
					<li role="presentation" class="dropdown-item category" data-cid="{categories.cid}">
						<a role="menu-item" href="#"><!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
					</li>
					<!-- END categories -->
				</ul>
			</div>

			<div class="btn-group pull-xs-right">
				<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
					<!-- IF selectedCategory --><!-- IF selectedCategory.icon --><i class="fa fa-fw {selectedCategory.icon}"></i><!-- ENDIF selectedCategory.icon --> {selectedCategory.name}<!-- ELSE -->
					[[unread:all_categories]]<!-- ENDIF selectedCategory -->
				</button>
				<ul class="dropdown-menu" role="menu">
					<li role="presentation" class="dropdown-item category">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
					</li>
					<!-- BEGIN categories -->
					<li role="presentation" class="dropdown-item category" data-cid="{categories.cid}">
						<a role="menu-item" href="{config.relative_path}/{selectedFilter.url}?cid={categories.cid}"><i class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i><!-- IF categories.icon --><i class="fa fa-fw {categories.icon}"></i><!-- ENDIF categories.icon --> {categories.name}</a>
					</li>
					<!-- END categories -->
				</ul>
			</div>

			<div class="btn-group pull-xs-right">
				<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name}
				</button>
				<ul class="dropdown-menu" role="menu">
					<!-- BEGIN filters -->
					<li role="presentation" class="dropdown-item category">
						<a role="menu-item" href="{config.relative_path}/{filters.url}{querystring}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					<!-- END filters -->
				</ul>
			</div>
		</div>
	</div>

	<hr class="hidden-sm-down"/>

	<div class="category">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden-xs-up<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<a href="{config.relative_path}/{selectedFilter.url}{querystring}">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>