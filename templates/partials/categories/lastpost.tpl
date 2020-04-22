<div class="last-post" style="border-color: {../bgColor}">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div data-component="category/posts">
		<p>
			<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(posts.user, "sm", true)}</a>
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<small class="timeago" title="{../timestampISO}"></small>
			</a>
		</p>
		<div class="post-content">
			{../content}
		</div>
	</div>
	<!-- ENDIF @first -->
	{{{end}}}

	<!-- IF !../posts.length -->
	<div data-component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
