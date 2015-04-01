<div class="subcategory">
	<!-- IF children.length --><p>Subcategories</p><!-- ENDIF children.length -->

	<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
		<!-- BEGIN children -->
		<li data-cid="{children.cid}" data-numRecentReplies="{children.numRecentReplies}" class="row clearfix">
			<meta itemprop="name" content="{children.name}">

			<div class="col-md-7 col-sm-9 col-xs-11 content">
				<div class="icon hidden-sm hidden-xs pull-left" style="{function.generateCategoryBackground}">
					<i class="fa fa-fw {children.icon}"></i>
				</div>

				<h1 class="title pull-left">
					<!-- IF children.link -->
					<a href="{children.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a href="{relative_path}/category/{children.slug}" itemprop="url">
					<!-- ENDIF children.link -->
					{children.name}
					</a><br />
					<small>{children.description}</small>
				</h1>
			</div>

			<!-- IF !children.link -->
			<div class="col-md-1 hidden-sm hidden-xs stats">
				<span class="{children.unread-class} human-readable-number" title="{children.topic_count}">{children.topic_count}</span><br />
				<small>[[global:topics]]</small>
			</div>
			<div class="col-md-1 hidden-sm hidden-xs stats">
				<span class="{children.unread-class} human-readable-number" title="{children.post_count}">{children.post_count}</span><br />
				<small>[[global:posts]]</small>
			</div>
			<div class="col-md-3 col-sm-3 col-xs-1 teaser">
				<div class="card" style="border-color: {children.bgColor}">
					<!-- BEGIN posts -->
					<!-- IF @first -->
					<p>
						<strong>{children.posts.user.username}</strong>
						<a class="permalink" href="{relative_path}/topic/{children.posts.topic.slug}<!-- IF children.posts.index -->/{children.posts.index}<!-- ENDIF children.posts.index -->">
							<small class="timeago" title="{children.posts.relativeTime}"></small>
						</a>
					</p>
					<div class="post-content">
						{children.posts.content}
					</div>
					<!-- ENDIF @first -->
					<!-- END posts -->

					<!-- IF !posts.length -->
					<div class="post-content">
						No new posts.
					</div>
					<!-- ENDIF !posts.length -->
				</div>
			</div>
			<!-- ELSE -->
			<div class="col-md-2 hidden-sm-hidden-xs"></div>
			<div class="col-md-3 col-sm-3 col-xs-1 teaser">
				<div class="card" style="border-color: {children.bgColor}"></div>
			</div>
			<!-- ENDIF !children.link -->
		</li>
		<!-- END children -->
	</ul>
</div>