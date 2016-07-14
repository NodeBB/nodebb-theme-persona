<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header"></div>
<div class="row">
	<div class="topic col-lg-9 col-sm-12" no-widget-class="topic col-lg-12 col-sm-12" no-widget-target="sidebar">

		<h1 component="post/header" class="hidden-xs" itemprop="name">

			<i class="pull-left fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->" title="[[topic:pinned]]"></i>
			<i class="pull-left fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->" title="[[topic:locked]]"></i>
			<i class="pull-left fa fa-arrow-circle-right <!-- IF !oldCid -->hidden<!-- ENDIF !oldCid -->" title="[[topic:moved]]"></i> 
			<!-- BEGIN icons -->@value<!-- END icons -->

			<span class="topic-title" component="topic/title">{title}</span>

			<span class="browsing-users hidden hidden-xs hidden-sm pull-right">
				<span>[[category:browsing]]</span>
				<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
				<small class="hidden">
					<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
				</small>
			</span>
		</h1>

		<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

		<hr class="visible-xs" />

		<ul component="topic" class="posts" data-tid="{tid}" data-cid="{cid}">
			<!-- BEGIN posts -->
				<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
					<!-- IF !posts.index -->
					<div class="post-bar-placeholder"></div>
					<!-- ENDIF !posts.index -->
				</li>
			<!-- END posts -->
		</ul>

		<div class="post-bar">
			<!-- IMPORT partials/post_bar.tpl -->
		</div>

		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->

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
	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>
<div widget-area="footer"></div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
