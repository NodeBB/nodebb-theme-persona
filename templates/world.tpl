<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
<div class="row">
	<div class="world {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<form class="mb-4" role="search" method="GET" action="{config.relative_path}/search">
			<input type="hidden" name="in" value="categories" />
			<div class="input-group" id="category-options">
				<input class="form-control form-control-lg" component="category-search" name="term" type="text" autocomplete="off" placeholder="Find a category..." aria-label="Category Search" />
				<button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog"></i></button>
				<ul class="dropdown-menu dropdown-menu-end">
					<li id="show-categories"><a class="dropdown-item" href="#">
						<i class="fa fa-eye"></i>
						[[world:show-categories]]
					</a></li>
					<li id="hide-categories"><a class="dropdown-item" href="#">
						<i class="fa fa-eye-slash"></i>
						[[world:hide-categories]]
					</a></li>
				</ul>
			</div>
		</form>

		<div class="quick-search-container dropdown-menu d-block p-2 hidden">
			<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
			<div class="quick-search-results-container"></div>
		</div>

		<ul class="categories-list ps-0 hidden">
			{{{ each categories }}}
			<!-- IMPORT partials/categories/item.tpl -->
			{{{ end }}}
		</ul>

		{{{ if (topics.length || privileges.topics:create) }}}
		<div class="topic-list-header text-bg-light sticky-top btn-toolbar justify-content-between p-1 mb-2 gap-1 flex-nowrap">
			<div class="d-flex gap-1 align-items-stretch">
				{{{ if privileges.topics:create }}}
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary text-nowrap" data-ajaxify="false" role="button">[[category:new-topic-button]]</a>
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}

				<a href="{url}" class="d-inline-block">
					<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex gap-1 align-items-center hide" id="new-topics-alert"><i class="fa fa-fw fa-rotate-right"></i>[[recent:load-new-posts]]</div>
				</a>
			</div>
			<div component="category/controls" class="d-flex gap-1 align-items-stretch">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->
			</div>
		</div>
		{{{ end }}}

		{{{ if !topics.length }}}
		<div class="row">
			<div class="col-md-10 offset-md-1 d-flex align-items-center">
				<div>
					<h2 class="fs-4 mb-3">[[world:onboard.title]]</h2>
					<p>[[world:onboard.what]]</p>
					<p>[[world:onboard.why]]</p>
					<p>[[world:onboard.how]]</p>
				</div>
				<i class="fa fa-comment-nodes fa-8x p-3"></i>
			</div>
		</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

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
