<!-- BEGIN posts -->
<!-- IF @first -->
<div class="card" style="border-color: {categories.bgColor}">
	<p>
		<strong>{categories.posts.user.username}</strong> <small class="timeago" title="{categories.posts.relativeTime}"></small>
	</p>
	<div class="post-content">
		{categories.posts.content}
	</div>
</div>
<!-- ENDIF @first -->
<!-- END posts -->