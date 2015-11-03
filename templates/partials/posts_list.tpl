<ul component="posts" class="posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item row" data-pid="{posts.pid}" data-uid="{posts.uid}">
		<div class="col-xs-9 post-body">
			<strong><a href="{config.relative_path}/topic/{posts.topic.slug}/{posts.index}">{posts.topic.title}</a></strong>
			<div component="post/content" class="content">
				<p>{posts.content}</p>
			</div>

			<div class="post-info">
				<a href="{config.relative_path}/user/{posts.user.userslug}">
					<!-- IF posts.user.picture -->
					<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img" style="background-color: {posts.user.icon:bgColor};" title="{posts.user.username}">{posts.user.icon:text}</div>
					<!-- ENDIF posts.user.picture -->
				</a>

				<div class="post-meta">
					<a href="{config.relative_path}/user/{posts.user.userslug}">{posts.user.username}</a><br />
					<span class="timeago" title="{posts.relativeTime}"></span>
				</div>
			</div>
		</div>

		<div class="col-xs-3">
			<!--<a href="{config.relative_path}/category/{posts.category.slug}">{posts.category.name}</a><br />-->
		</div>
	</li>
	<!-- END posts -->
</ul>
<div component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>