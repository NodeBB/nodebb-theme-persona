<ul component="posts" class="posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item row<!-- IF posts.deleted --> deleted<!-- ELSE --><!-- IF posts.topic.deleted --> deleted<!-- ENDIF posts.topic.deleted --><!-- ENDIF posts.deleted -->" data-pid="{posts.pid}" data-uid="{posts.uid}">
		<div class="col-lg-11 col-sm-10 col-xs-9 post-body">
			<a class="topic-title" href="{config.relative_path}/post/{posts.pid}">
				<!-- IF !posts.isMainPost -->RE: <!-- ENDIF !posts.isMainPost -->{posts.topic.title}
			</a>

			<div component="post/content" class="content">
				{posts.content}
			</div>

			<small class="topic-category"><a href="{config.relative_path}/category/{posts.category.slug}">[[global:posted_in, {posts.category.name}]]</a></small>

			<div class="post-info">
				<a href="{config.relative_path}/user/{posts.user.userslug}">
					<!-- IF posts.user.picture -->
					<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img" style="background-color: {posts.user.icon:bgColor};" title="{posts.user.username}">{posts.user.icon:text}</div>
					<!-- ENDIF posts.user.picture -->
				</a>

				<div class="post-author">
					<a href="{config.relative_path}/user/{posts.user.userslug}">{posts.user.username}</a><br />
					<span class="timeago" title="{posts.timestampISO}"></span>
				</div>
			</div>
		</div>
	</li>
	<!-- END posts -->
</ul>
<div component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>