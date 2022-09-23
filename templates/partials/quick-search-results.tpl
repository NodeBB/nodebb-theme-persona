<ul id="quick-search-results" class="quick-search-results list-unstyled mb-2 p-0 overflow-auto" style="max-width:400px; max-height: 500px;">
{{{each posts}}}
<li data-tid="{posts.topic.tid}" data-pid="{posts.pid}">
	<a href="{config.relative_path}/post/{posts.pid}"
		class="text-decoration-none text-reset clearfix d-block text-truncate px-4 py-1">
		{buildAvatar(posts.user, "24px", true)}
		<span class="quick-search-title fw-bold">{posts.topic.title}</span>
		<br/>
		<p class="snippet text-break text-wrap">
		{posts.snippet}
		</p>
		<small class="post-info float-end">
			<div class="category-item d-inline-block">
				<span role="presentation" class="icon p-1 rounded-1" style="{function.generateCategoryBackground, posts.category}"><i class="fa fa-fw {posts.category.icon}"></i></span> {posts.category.name}
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