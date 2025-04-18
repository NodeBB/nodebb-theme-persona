<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
<div class="row">
	<div class="category {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<!-- IMPORT partials/category/subcategory.tpl -->

		{{{ if (topics.length || privileges.topics:create) }}}
		<div class="topic-list-header text-bg-light sticky-top btn-toolbar justify-content-between align-items-center p-1 mb-2 flex-nowrap">
			<div class="d-flex gap-1">
				{{{ if privileges.topics:create }}}
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary btn-sm text-nowrap" data-ajaxify="false" role="button">[[category:new-topic-button]]</a>
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary btn-sm">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}

				<a href="{url}" class="d-inline-block">
					<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex gap-1 align-items-center hide" id="new-topics-alert"><i class="fa fa-fw fa-rotate-right"></i>[[recent:load-new-posts]]</div>
				</a>
			</div>
			<div component="category/controls" class="d-flex gap-1">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools-dropdown-right.tpl -->
			</div>
		</div>
		{{{ end }}}

		{{{ if (./inbox && (./hasFollowers == false)) }}}
		<div class="alert alert-warning mb-4" id="category-no-followers" data-bs-toggle="dropdown" data-bs-target='[component="topic/watch"] button' aria-hidden="true">
			<i class="fa fa-triangle-exclamation pe-2"></i>
			[[category:no-followers]]
			<a href="#" class="stretched-link"></a>
		</div>
		{{{ end }}}

		{{{ if (!topics.length && privileges.topics:create)}}}
		<hr class="visible-xs" />
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no-topics]]
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
