<!-- IMPORT partials/breadcrumbs-json-ld.tpl -->
{{{ if config.theme.enableBreadcrumbs }}}
<!-- IMPORT partials/breadcrumbs.tpl -->
{{{ end }}}

{{{ if widgets.header.length }}}
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
{{{ end }}}

<div class="category-header d-flex flex-column gap-2">
	<div class="d-flex gap-2 align-items-center mb-1 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		{buildCategoryIcon(@value, "40px", "rounded-1 flex-shrink-0")}
		<h1 class="tracking-tight fs-2 fw-semibold mb-0 text-center">[[world:name]]</h1>
	</div>
	{{{ if ./descriptionParsed }}}
	<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		{./descriptionParsed}
	</p>
	{{{ end }}}
</div>

<div class="row flex-fill">
	<div class="world {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<div class="category">
			<div class="row flex-row-reverse">
				<div class="col-lg-4 col-sm-12 mt-2 pt-1">
					<form class="mb-3" role="search" method="GET" action="{config.relative_path}/search">
						<input type="hidden" name="in" value="categories" />
						<input class="form-control form-control-lg" component="category-search" name="term" type="text" autocomplete="off" placeholder="[[world:category-search]]" />
					</form>
					<div class="quick-search-container dropdown-menu d-block p-2 hidden">
						<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
						<div class="quick-search-results-container"></div>
					</div>

					<ul class="categories-list ps-0 list-unstyled pt-3">
						{{{ each categories }}}
						<!-- IMPORT partials/account/category-item.tpl -->
						{{{ end }}}
					</ul>
				</div>

				{{{ if posts.length }}}
				<div class="col-lg-8 col-sm-12">
					{{{ if posts.length }}}
					<div class="topic-list-header sticky-top btn-toolbar justify-content-end align-items-center px-1 py-2 mb-2 flex-nowrap">
						<div class="btn-group bottom-sheet">
							<button class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center dropdown-toggle" data-bs-toggle="dropdown">
								<i class="fa fa-fw fa-arrow-down-wide-short text-primary"></i>
								<span id="sort-label" class="visible-md-inline visible-lg-inline fw-semibold"></span>
							</button>
							<ul class="dropdown-menu" id="sort-options">
								<li><a class="dropdown-item" href="{config.relative_path}/world">[[world:latest]]</a></li>
								<li><a class="dropdown-item" href="{config.relative_path}/world?sort=popular&term=day">[[world:popular-day]]</a></li>
								<li><a class="dropdown-item" href="{config.relative_path}/world?sort=popular&term=week">[[world:popular-week]]</a></li>
								<li><a class="dropdown-item" href="{config.relative_path}/world?sort=popular&term=month">[[world:popular-month]]</a></li>
								<li><a class="dropdown-item" href="{config.relative_path}/world?sort=popular&term=year">[[world:popular-year]]</a></li>
								<li><a class="dropdown-item" href="{config.relative_path}/world?sort=popular&term=alltime">[[world:popular-alltime]]</a></li>
							</ul>
						</div>
						<a class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center fw-semibold" id="world-help" href="#">
							<i class="fa fa-question text-primary"></i>
							[[world:help]]
						</a>
						<!-- IMPORT partials/category/tools-dropdown-left.tpl -->
					</div>
					{{{ end }}}
					<ul class="list-unstyled" id="world-feed">
						{{{ each posts }}}
						<!-- IMPORT partials/feed/item.tpl -->
						{{{ end }}}
					</ul>

					{{{ if config.usePagination }}}
					<!-- IMPORT partials/paginator.tpl -->
					{{{ end }}}
				</div>
				{{{ else }}}
				<div class="col-lg-8 col-sm-12 d-flex gap-3 align-items-top">
					<div>
						<h2 class="fs-4 mb-3">
							<i class="fa fa-comment-nodes"></i>
							[[world:onboard.title]]
						</h2>
						<p>[[world:onboard.what]]</p>
						<p>[[world:onboard.why]]</p>
						<p>[[world:onboard.how]]</p>
					</div>
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{ each widgets.sidebar }}}
		{{widgets.sidebar.html}}
		{{{ end }}}
	</div>
</div>

<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>