
<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="category_slug" value="{slug}" />
<input type="hidden" template-variable="topic_count" value="{topic_count}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />


<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="subcategories row">
		<!-- BEGIN children -->
		<!-- IMPORT partials/category_child.tpl -->
		<!-- END children -->
	</div>

	<div class="header category-tools clearfix">
		<!-- IF privileges.topics:create -->
		<button id="new_post" class="btn btn-primary">[[category:new_topic_button]]</button>
		<!-- ELSE -->
			<!-- IF !loggedIn -->
			<a href="/login?next=category/{slug}" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF !loggedIn -->
		<!-- ENDIF privileges.topics:create -->

		<span class="pull-right">
			<!-- IF loggedIn -->
			<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->">
				<i class="fa fa-eye"></i>
				<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:watch]]</span>
			</button>
			<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->">
				<i class="fa fa-eye-slash"></i>
				<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[category:ignore]]</span>
			</button>
			<!-- ENDIF loggedIn -->

			<!-- IMPORT partials/category_tools.tpl -->

			<!-- IMPORT partials/category_sort.tpl -->

			<div class="dropdown share-dropdown inline-block">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:share]]</span>
					<span class="visible-xs-inline"><i class="fa fa-fw fa-share-alt"></i></span>
					<span class="caret"></span>
				</button>

				<!-- IMPORT partials/share_dropdown.tpl -->
			</div>
		</span>

	</div>

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<ul id="topics-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
		<meta itemprop="itemListOrder" content="descending">
		<!-- BEGIN topics -->
		<li class="category-item {function.generateTopicClass}" itemprop="itemListElement" data-tid="{topics.tid}" data-index="{topics.index}">

			<div class="col-md-12 col-xs-12 topic-row">
				<!-- IF privileges.editable -->
					<i class="fa fa-fw fa-square-o pull-left select pointer"></i>
				<!-- ENDIF privileges.editable -->
				<a href="{relative_path}/user/{topics.user.userslug}" class="pull-left">
					<img src="<!-- IF topics.thumb -->{topics.thumb}<!-- ELSE -->{topics.user.picture}<!-- ENDIF topics.thumb -->" class="img-rounded user-img" title="{topics.user.username}"/>
				</a>

				<h3>
					<a href="{relative_path}/topic/{topics.slug}" itemprop="url">
						<meta itemprop="name" content="{topics.title}">

						<strong><i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i></strong>
						<span class="topic-title">{topics.title}</span>
					</a>
				</h3>

				<small>
					<span class="topic-stats">
						[[global:posts]]
						<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
					</span>
					|
					<span class="topic-stats">
						[[global:views]]
						<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
					</span>
					|
					<span>
						[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]
					</span>

					<span class="pull-right">
						<!-- IF topics.unreplied -->
						[[category:no_replies]]
						<!-- ELSE -->
						<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
							<img class="teaser-pic" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}"/>
						</a>
						<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}">
							[[global:replied_ago, <span class="timeago" title="{topics.teaser.timestamp}"></span>]]
						</a>
						<!-- ENDIF topics.unreplied -->
					</span>

					<!-- IMPORT partials/category_tags.tpl -->
				</small>
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