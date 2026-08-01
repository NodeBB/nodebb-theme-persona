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

<div class="world flex-fill">
	<div class="category">
		<div class="row">
			<div class="col-lg-3 col-sm-12 mt-2 pt-1 ">
				<div class="category-header d-flex flex-column gap-2">
					<div class="d-flex gap-2 align-items-center mb-1 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
						{{buildCategoryIcon(@value, "40px", "rounded-1 flex-shrink-0")}}
						<h1 class="tracking-tight fs-2 fw-semibold mb-0 text-center">{{tx("world:name")}}</h1>
					</div>
					{{{ if ./descriptionParsed }}}
					<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
						{{{ if (cid == "-1") }}}{{tx(./descriptionParsed)}}{{{ else }}}{{./descriptionParsed}}{{{ end }}}
					</p>
					{{{ end }}}
				</div>

				<div class="{{{ if !config.loggedIn }}}invisible{{{ end }}}">
					<form class="mb-3" role="search" method="GET" action="{config.relative_path}/search">
						<input type="hidden" name="in" value="categories" />
						<div class="input-group bottom-sheet">
							<input class="form-control" component="category-search" name="term" type="text" autocomplete="off" placeholder="{{tx("world:category-search")}}" />
							{{{ if categories.length }}}
							<button class="btn btn-outline-secondary dropdown-toggle d-md-none" type="button" data-bs-toggle="dropdown">
								<i class="fa fa-fw fa-list"></i>
							</button>
							<ul class="dropdown-menu">
								{{{ each categories }}}
								<li class="flex-grow-1 align-items-start d-flex gap-2 p-1 mb-2 position-relative">
									<div>
										{{buildCategoryIcon(@value, "24px", "rounded-1")}}
									</div>
									<div class="d-grid gap-0">
										<div class="title fw-semibold">
											<a class="text-reset stretched-link" href="{{{ if ./link }}}{./link}{{{ else }}}{config.relative_path}/category/{./slug}{{{ end }}}" itemprop="url">{{tx(./name)}}</a>
										</div>
										{{{ if ./descriptionParsed }}}
										<div class="description text-muted text-xs w-100 line-clamp-sm-5">{{./descriptionParsed}}</div>
										{{{ end }}}
									</div>
								</li>
								{{{ end }}}
							</ul>
							{{{ end }}}
						</div>
					</form>
					<div class="quick-search-container dropdown-menu d-block p-2 hidden">
						<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
						<div class="quick-search-results-container"></div>
					</div>

					<ul class="categories-list ps-0 list-unstyled pt-3 d-none d-md-block">
						{{{ each categories }}}
						<!-- IMPORT partials/account/category-item.tpl -->
						{{{ end }}}
					</ul>
				</div>
			</div>

			<div class="col-lg-6 col-sm-12">
				<!-- IMPORT partials/topic-list-bar.tpl -->
				<!-- IMPORT partials/topic/quickreply.tpl -->

				{{{ if !config.loggedIn }}}
				<div class="alert alert-info alert-dismissible fade show">
					<p class="fw-semibold">
						{{tx("world:onboard.title")}}
					</p>
					<p>{{tx("world:onboard.what")}}</p>
					<p>{{tx("world:onboard.why")}}</p>
					<p>{{tx("world:onboard.how")}}</p>
					<a href="{config.relative_path}/register" class="fw-semibold btn btn-sm btn-warning">{{tx("global:register")}}</a>
					<a href="{config.relative_path}/login" class="fw-semibold btn btn-sm btn-info">{{tx("global:login")}}</a>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="{{tx("global:close")}}"></button>
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

			<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
				{{{ each widgets.sidebar }}}
				{{widgets.sidebar.html}}
				{{{ end }}}
			</div>
		</div>
	</div>
</div>

<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>