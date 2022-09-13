<div class="clearfix">
	<div class="icon float-start">
		<a href="<!-- IF post.user.userslug -->{config.relative_path}/user/{post.user.userslug}<!-- ELSE -->#<!-- ENDIF post.user.userslug -->">
			{buildAvatar(post.user, "24px", true, "", "user/picture")} {post.user.username}
		</a>
	</div>
	<small class="float-end">
		<span class="timeago" title="{post.timestampISO}"></span>
	</small>
</div>

<div>{post.content}</div>