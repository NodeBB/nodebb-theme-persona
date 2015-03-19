<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="subcategories row">
		<!-- BEGIN children -->
		<!-- IMPORT partials/category/subcategory.tpl -->
		<!-- END children -->
	</div>

	<!-- IF children.length --><hr /><!-- ENDIF children.length -->

	<div class="clearfix">
		<!-- IF privileges.topics:create -->
		<button id="new_post" class="btn btn-primary">[[category:new_topic_button]]</button>
		<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a href="/login?next=category/{slug}" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF !loggedIn -->
		<!-- ENDIF privileges.topics:create -->

		<span class="pull-right">
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/tools.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
		</span>
	</div>

	<hr />

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->


	<ul component="category" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
		<meta itemprop="itemListOrder" content="descending">
		<!-- BEGIN topics -->
		<li component="category/topic" class="row clearfix {function.generateTopicClass}" data-tid="{topics.tid}" data-index="{topics.index}" data-cid="{topics.cid}" itemprop="itemListElement">
			<meta itemprop="name" content="{topics.title}">

			<div class="col-md-7 col-sm-12 col-xs-12 content">
				<div class="pull-left">
					<!-- IF privileges.editable -->
						<i class="fa fa-fw fa-square-o pull-left select pointer hide"></i>
					<!-- ENDIF privileges.editable -->
					<a href="{relative_path}/user/{topics.user.userslug}" class="pull-left">
						<img src="{topics.user.picture}" class="img-circle user-img" title="{topics.user.username}"/>
					</a>
				</div>

				<h1 class="title pull-left">
					<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"></i>
					<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"></i>
					<a href="{relative_path}/topic/{topics.slug}" itemprop="url">{topics.title}</a><br />
					<small>[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
				</h1>
			</div>

			<div class="hidden-sm hidden-xs">
				<!-- IF !categories.link -->
				<div class="col-md-1 stats">
					<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
					<small>[[global:views]]</small>
				</div>
				<div class="col-md-1 stats">
					<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
					<small>[[global:posts]]</small>
				</div>
				<div class="col-md-3">
					<div class="card" style="border-color: {bgColor}">
						<!-- IF topics.unreplied -->
						<p>
							[[category:no_replies]]
						</p>
						<!-- ELSE -->
						<p>
							<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
								<strong>{topics.teaser.user.username}</strong>
							</a>
							<small class="timeago" title="{topics.teaser.timestamp}"></small>
						</p>
						<p>
							Would be nice to have content here.
						</p>
						<!-- ENDIF topics.unreplied -->
					</div>
				</div>
				<!-- ELSE -->
				<div class="col-md-4">

				</div>
				<!-- ENDIF !categories.link -->
			</div>
		</li>
		<!-- END topics -->
	</ul>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/category.tpl -->