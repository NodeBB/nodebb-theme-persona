{{{each posts}}}
<li>
	<a href="{config.relative_path}/post/{posts.pid}">
		{buildAvatar(posts.user, "sm", true)}
		<span class="quick-search-title">{posts.topic.title}</span>
		<br/>
		<p class="snippet">
		{posts.snippet}
		</p>
		<small class="post-info pull-right">
			<span class="fa-stack" style="{function.generateCategoryBackground, posts.category}"><i style="color:{posts.category.color};" class="fa {posts.category.icon} fa-stack-1x"></i></span> {posts.category.name} &bull;
			<span class="timeago" title="{posts.timestampISO}"></span>
		</small>
	 </a>
</li>
<!-- IF !@last -->
<li role="separator" class="divider"></li>
<!-- ENDIF -->
{{{end}}}
<!-- IF multiplePages -->
<li class="text-center">
	<a href="{url}">
		[[search:see-more-results, {matchCount}]]
	</a>
</li>
<!-- ENDIF multiplePages -->