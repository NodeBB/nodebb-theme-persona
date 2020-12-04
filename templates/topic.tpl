<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<div class="topic <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<div class="topic-header">
			<h1 component="post/header" class="" itemprop="name">
				<span class="topic-title" component="topic/title">
					<span component="topic/labels">
						<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="{{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {pinExpiryISO}]]{{{ end }}}"></i>
						<i component="topic/locked" class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
						<i class="fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="{{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}"></i>
						{{{each icons}}}{@value}{{{end}}}
					</span>
					{title}
				</span>
			</h1>

			<div class="topic-info clearfix">
				<div class="category-item inline-block">
					{{{ if category.icon }}}
					<div role="presentation" class="icon pull-left" style="{{{ if category.bgColor }}}background-color: {category.bgColor};{{{end}}}; {{{ if category.color}}}color: {category.color};{{{end}}}">
						<i class="fa fa-fw {category.icon}"></i>
					</div>
					{{{ end }}}
					<a href="{config.relative_path}/category/{category.slug}">{category.name}</a>

				</div>

				<div class="tags tag-list inline-block hidden-xs">
					<!-- IMPORT partials/topic/tags.tpl -->
				</div>
				<div class="inline-block hidden-xs">
					<!-- IMPORT partials/topic/stats.tpl -->
				</div>
				{{{ if !feeds:disableRSS }}}
				{{{ if rssFeedUrl }}}<a class="hidden-xs" target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a>{{{ end }}}
				{{{ end }}}
				<!-- IMPORT partials/topic/browsing-users.tpl -->

				<!-- IMPORT partials/post_bar.tpl -->
			</div>
		</div>
		<!-- IF merger -->
		<div component="topic/merged/message" class="alert alert-warning clearfix">
			<span class="pull-left">[[topic:merged_message, {config.relative_path}/topic/{mergeIntoTid}, {merger.mergedIntoTitle}]]</span>
			<span class="pull-right">
				<a href="{config.relative_path}/user/{merger.userslug}">
					<strong>{merger.username}</strong>
				</a>
				<small class="timeago" title="{mergedTimestampISO}"></small>
			</span>
		</div>
		<!-- ENDIF merger -->

		<!-- IMPORT partials/topic/deleted-message.tpl -->

		<ul component="topic" class="posts" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="{{{ if posts.deleted }}}deleted{{{ end }}} {{{ if posts.selfPost }}}self-post{{{ end }}} {{{ if posts.topicOwnerPost }}}topic-owner-post{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
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

		<div class="pagination-block text-center">
			<div class="progress-bar"></div>
			<div class="wrapper dropup">
				<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>

				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="pagination-text"></span>
				</a>

				<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>
				<ul class="dropdown-menu dropdown-menu-right" role="menu">
					<li>
						<div class="row">
							<div class="col-xs-9 post-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non libero et ex feugiat eleifend. Sed tincidunt sem ut nunc luctus suscipit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc eros ligula, elementum vel fermentum at, placerat a nibh. Cras sit amet consectetur ex, ac convallis mauris. Nulla ut ipsum vel nisl suscipit ultricies ac eu ligula. Suspendisse nibh justo, semper vel arcu malesuada, mattis accumsan dolor. Ut ut euismod lectus, et molestie libero. Sed vel feugiat enim.

	Suspendisse sit amet massa aliquam, molestie elit sit amet, maximus justo. Morbi in lectus tortor. Nam pulvinar risus ac posuere porttitor. Quisque purus eros, bibendum a magna suscipit, blandit fringilla enim. Vestibulum viverra ac felis vitae mattis. Cras fringilla condimentum vulputate. Suspendisse ac scelerisque neque, quis dapibus purus. Cras gravida enim eu nisi congue molestie. Donec placerat facilisis nulla, vitae congue ipsum imperdiet elementum. Nunc diam elit, tristique in dictum eget, accumsan at libero. Donec sed pellentesque magna. Donec eget venenatis mi. Cras feugiat lacus id odio fringilla, sed ornare enim posuere. Nam dui sem, pulvinar id lacinia in, dictum id purus. Aliquam eget velit lectus.</div>
							<div class="col-xs-3">
								<span class="pointer pagetop"><i class="fa fa-angle-double-up"></i> First Post</span>
								<div class="scroller-bg">
									<div class="scroller-thumb">
										<span class="thumb-text"></span>
									</div>
								</div>
								<span class="pointer pagebottom"><i class="fa fa-angle-double-down"></i> Last Post</span>
							</div>
						</div>
					</li>
					<li>
						<input type="text" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
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

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
