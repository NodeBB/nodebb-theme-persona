<ul id="quick-search-results" class="quick-search-results mb-2">
{{{each posts}}}
<li data-tid="{posts.topic.tid}" data-pid="{posts.pid}">
	<a href="{config.relative_path}/post/{posts.pid}" class="deco-none">
		{buildAvatar(posts.user, "sm", true)}
		<span class="quick-search-title">{posts.topic.title}</span>
		<br/>
		<p class="snippet">
		{posts.snippet}
		</p>
		<small class="post-info float-end">
			<div class="category-item d-inline-block">
				<div role="presentation" class="icon float-start" style="{function.generateCategoryBackground, posts.category}"><i class="fa fa-fw {posts.category.icon}"></i></div> {posts.category.name}
				&bull; <span class="timeago" title="{posts.timestampISO}"></span>
            </div>
		</small>
	 </a>
</li>
<!-- IF !@last -->
<li role="separator" class="dropdown-divider"></li>
<!-- ENDIF -->
{{{end}}}
</ul>
<!-- IF multiplePages -->
<div class="text-center">
	<a href="{url}">
		[[search:see-more-results, {matchCount}]]
	</a>
</div>
<!-- ENDIF multiplePages -->
{{{if !posts.length}}}
<div class="text-center no-results">[[search:no-matches]]</li>
{{{end}}}