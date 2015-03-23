<div class="card" style="border-color: {categories.bgColor}">
	<!-- BEGIN posts -->
	<!-- IF @first -->
	<p>
		<strong>{categories.posts.user.username}</strong> <small class="timeago" title="{categories.posts.relativeTime}"></small>
	</p>
	<div class="post-content">
		{categories.posts.content}
	</div>
	<!-- ENDIF @first -->
	<!-- END posts -->

	<!-- IF !posts.length -->
	<div class="post-content">
		No new posts.
	</div>
	<!-- ENDIF !posts.length -->
</div>