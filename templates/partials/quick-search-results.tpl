<ul id="quick-search-results" class="quick-search-results list-unstyled mb-0 p-0 overflow-auto" style="max-width: {dropdown.maxWidth}; max-height: {dropdown.maxHeight};">
{{{each posts}}}
<li data-tid="{posts.topic.tid}" data-pid="{posts.pid}">
	<a href="{config.relative_path}/post/{posts.pid}"
		class="text-decoration-none text-reset clearfix d-block text-truncate px-3 py-1">
		{buildAvatar(posts.user, "24px", true)}
		<span class="quick-search-title fw-bold">{posts.topic.title}</span>
		<br/>
		<p class="snippet text-break text-wrap">
		{posts.snippet}
		</p>
		<small class="post-info float-end">
			<div class="category-item d-inline-block">
				{buildCategoryIcon(./category, "24px", "rounded-circle")} {posts.category.name}
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
<div class="text-center mt-2">
	<a href="{url}">
		[[search:see-more-results, {matchCount}]]
	</a>
</div>
<!-- ENDIF multiplePages -->
{{{if !posts.length}}}
<div class="text-center no-results">[[search:no-matches]]</li>
{{{end}}}