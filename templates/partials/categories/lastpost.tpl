<div class="card" style="border-color: {categories.bgColor}">
	<!-- BEGIN posts -->
	<!-- IF @first -->
	<p>
		<strong>{categories.posts.user.username}</strong>
		<a class="permalink" href="{relative_path}/topic/{categories.posts.topic.slug}<!-- IF categories.posts.index -->/{categories.posts.index}<!-- ENDIF categories.posts.index -->">
			<small class="timeago" title="{categories.posts.relativeTime}"></small>
		</a>
	</p>
	<div class="post-content">
		{categories.posts.content}
	</div>
	<!-- ENDIF @first -->
	<!-- END posts -->

	<!-- IF !posts.length -->
	<div class="post-content">
		<div class="no_posts">[[category:no_posts]]</div>
	</div>
	<!-- ENDIF !posts.length -->
</div>