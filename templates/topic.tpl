<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="topic row">
	<div class="col-lg-9">

		<h1 component="post/header" class="" itemprop="name">

			<i class="pull-left fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]"></i>
			<i class="pull-left fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
			<i class="pull-left fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="[[topic:moved]]"></i>
			{{{each icons}}}@value{{{end}}}

			<span class="topic-title" component="topic/title">{title}</span>
		</h1>

		<a class="category" href="{config.relative_path}/category/{category.slug}">
			<span class="icon fa-stack fa-lg" style="{function.generateCategoryBackground, category}">
				<i style="color:{category.color};" class="fa {category.icon} fa-stack-1x"></i>
			</span>
			<span class="text">{category.name}</span>
		</a>
		{{{if tags.length}}}
		&bull;
		{{{end}}}
		<span class="tag-list">
			{{{each tags}}}
			<a href="{config.relative_path}/tags/{tags.value}"><span class="tag" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.valueEscaped}</span></a>
			{{{end}}}
		</span>

		<div class="pull-right">
			<!-- IMPORT partials/topic/sort.tpl -->
		</div>

		<span style="margin: 5px; 0px;" class="text-muted pull-right"><i class="fa fa-eye"></i> <span class="human-readable-number" title="{viewcount}">{viewcount}</span></span>
		<span style="margin: 5px; 0px;" class="text-muted pull-right"><i class="fa fa-pencil"></i> <span class="human-readable-number" title="{postcount}">{postcount}</span></span>

		<hr class="hidden-xs"/>

		<!-- IF merger -->
		<div component="topic/merged/message" class="alert alert-warning clearfix">
			<span class="pull-left">[[topic:merged_message, {mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
			<span class="pull-right">
				<a href="{config.relative_path}/user/{merger.userslug}">
					<strong>{merger.username}</strong>
				</a>
				<small class="timeago" title="{mergedTimestampISO}"></small>
			</span>
		</div>
		<!-- ENDIF merger -->

		<!-- IMPORT partials/topic/deleted-message.tpl -->

		<hr class="visible-xs" />

		<ul component="topic" class="posts" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" id="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>
			{{{end}}}
		</ul>

		<!-- IF config.enableQuickReply -->
		<!-- IMPORT partials/topic/quickreply.tpl -->
		<!-- ENDIF config.enableQuickReply -->

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

		<div class="navigator-thumb text-center hidden">
			<strong class="text"></strong><br/>
			<span class="time"></span>
		</div>
		<div class="visible-xs visible-sm pagination-block text-center">
			<div class="progress-bar"></div>
			<div class="wrapper">
				<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
				<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
				<span class="pagination-text"></span>
				<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
				<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>
			</div>
		</div>
	</div>

	<div class="col-lg-3 col-sm-12">
		<div class="topic-main-buttons">
			<!-- IMPORT partials/topic/reply-button.tpl -->

			<!-- IF loggedIn -->
			<button component="topic/mark-unread" class="btn btn-default" title="[[topic:mark_unread]]">
				<i class="fa fa-fw fa-inbox"></i>
			</button>
			<!-- ENDIF loggedIn -->

			<!-- IMPORT partials/topic/watch.tpl -->

			<!-- IMPORT partials/thread_tools.tpl -->
		</div>


		<!-- IMPORT partials/topic/browsing-users.tpl -->

		<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
			{{{each widgets.sidebar}}}
			{{widgets.sidebar.html}}
			{{{end}}}
		</div>
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
