<!-- BEGIN posts -->
<!-- IF @first -->
<div class="card" style="border-color: {categories.bgColor}">
	<p>
		<strong>{categories.posts.user.username}</strong> <small class="timeago" title="{categories.posts.relativeTime}"></small>
	</p>
	{categories.posts.content}
</div>
<!-- ENDIF @first -->
<!-- END posts -->