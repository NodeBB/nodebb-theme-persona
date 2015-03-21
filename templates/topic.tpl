<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul component="topic" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
			<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">

				<!-- IMPORT partials/topic/post.tpl -->
			</li>

			<!-- IF !posts.index -->
			<li class="post-bar" data-index="{posts.index}">
				<!-- IMPORT partials/post_bar.tpl -->
			</li>
			<!-- ENDIF !posts.index -->
		<!-- END posts -->
	</ul>

	<div class="post-bar bottom-post-bar <!-- IF unreplied -->hide<!-- ENDIF unreplied -->">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/topic.tpl -->