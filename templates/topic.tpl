<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row mb-5">
	<div class="topic {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}" itemid="{url}" itemscope itemtype="https://schema.org/DiscussionForumPosting">
		<meta itemprop="headline" content="{escape(titleRaw)}">
		<meta itemprop="text" content="{escape(titleRaw)}">
		<meta itemprop="url" content="{url}">
		<meta itemprop="datePublished" content="{timestampISO}">
		<meta itemprop="dateModified" content="{lastposttimeISO}">
		<div itemprop="author" itemscope itemtype="https://schema.org/Person">
			<meta itemprop="name" content="{author.username}">
			{{{ if author.userslug }}}<meta itemprop="url" content="{config.relative_path}/user/{author.userslug}">{{{ end }}}
		</div>

		<div class="topic-header sticky-top mb-3">
			<h1 component="post/header" itemprop="name">
				<div class="topic-title d-flex">
					<span class="fs-3" component="topic/title">{title}</span>
				</div>
			</h1>

			<div class="topic-info pb-2 d-flex gap-3 align-items-center flex-wrap">
				<span component="topic/labels" class="d-flex text-md gap-2 {{{ if (!scheduled && (!pinned && (!locked && (!oldCid && !icons.length)))) }}}hidden{{{ end }}}">
					<span component="topic/scheduled" class="badge badge border border-gray-300 text-body {{{ if !scheduled }}}hidden{{{ end }}}">
						<i class="fa fa-clock-o"></i> [[topic:scheduled]]
					</span>
					<span component="topic/pinned" class="badge badge border border-gray-300 text-body {{{ if (scheduled || !pinned) }}}hidden{{{ end }}}">
						<i class="fa fa-thumb-tack"></i> {{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {isoTimeToLocaleString(./pinExpiryISO, config.userLang)}]]{{{ end }}}
					</span>
					<span component="topic/locked" class="badge badge border border-gray-300 text-body {{{ if !locked }}}hidden{{{ end }}}">
						<i class="fa fa-lock"></i> [[topic:locked]]
					</span>
					<a component="topic/moved" href="{config.relative_path}/category/{oldCid}" class="badge badge border border-gray-300 text-body text-decoration-none {{{ if !oldCid }}}hidden{{{ end }}}">
						<i class="fa fa-arrow-circle-right"></i> {{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}
					</a>
					{{{each icons}}}<span class="lh-1">{@value}</span>{{{end}}}
				</span>

				<div class="category-item d-inline-block">
					{buildCategoryIcon(category, "24px", "rounded-circle")}
					<a href="{config.relative_path}/category/{category.slug}">{category.name}</a>
				</div>

				<div data-tid="{./tid}" component="topic/tags" class="tags tag-list d-inline-block hidden-xs hidden-empty"><!-- IMPORT partials/topic/tags.tpl --></div>
				<div class="d-inline-block hidden-xs">
					<!-- IMPORT partials/topic/stats.tpl -->
				</div>
				{{{ if !feeds:disableRSS }}}
				{{{ if rssFeedUrl }}}<a class="hidden-xs" target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a>{{{ end }}}
				{{{ end }}}
				{{{ if browsingUsers }}}
				<div class="d-inline-block hidden-xs">
				<!-- IMPORT partials/topic/browsing-users.tpl -->
				</div>
				{{{ end }}}
				<div class="ms-auto">
					<!-- IMPORT partials/post_bar.tpl -->
				</div>
			</div>
		</div>
		{{{ if merger }}}
		<!-- IMPORT partials/topic/merged-message.tpl -->
		{{{ end }}}

		{{{ if forker }}}
		<!-- IMPORT partials/topic/forked-message.tpl -->
		{{{ end }}}


		{{{ if !scheduled }}}
		<!-- IMPORT partials/topic/deleted-message.tpl -->
		{{{ end }}}

		<ul component="topic" class="posts timeline" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="{{{ if posts.deleted }}}deleted{{{ end }}} {{{ if posts.selfPost }}}self-post{{{ end }}} {{{ if posts.topicOwnerPost }}}topic-owner-post{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{./index}" id="{increment(./index, "1")}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>
				{{{ if (config.topicPostSort != "most_votes") }}}
				{{{ each ./events}}}
				<!-- IMPORT partials/topic/event.tpl -->
				{{{ end }}}
				{{{ end }}}
			{{{end}}}
		</ul>

		{{{ if browsingUsers }}}
		<div class="visible-xs">
			<!-- IMPORT partials/topic/browsing-users.tpl -->
			<hr/>
		</div>
		{{{ end }}}

		{{{ if config.enableQuickReply }}}
		<!-- IMPORT partials/topic/quickreply.tpl -->
		{{{ end }}}

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}

		<!-- IMPORT partials/topic/navigator.tpl -->
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
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

{{{ if !config.usePagination }}}
<noscript>
<!-- IMPORT partials/paginator.tpl -->
</noscript>
{{{ end }}}
