<ul component="posts" class="posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item" data-pid="{posts.pid}" data-uid="{posts.uid}">
		<a href="{config.relative_path}/user/{posts.user.userslug}">
			<!-- IF posts.user.picture -->
			<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
			<!-- ELSE -->
			<div class="user-icon user-img" style="background-color: {posts.user.icon:bgColor};" title="{posts.user.username}">{posts.user.icon:text}</div>
			<!-- ENDIF posts.user.picture -->
		</a>

		<a href="{config.relative_path}/user/{posts.user.userslug}">
			<strong><span>{posts.user.username}</span></strong>
		</a>
		<div component="post/content" class="content">
			<p>{posts.content}</p>
			<p class="fade-out"></p>
		</div>
		<small>
			<span class="pull-right">
				[[global:posted_in_ago, <a href="{config.relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
				<a href="{config.relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a>
			</span>
		</small>
	</li>
	<!-- END posts -->
</ul>
<div component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>