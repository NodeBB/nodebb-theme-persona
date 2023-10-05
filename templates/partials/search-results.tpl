<div id="results" class="search-results col-md-12" data-search-query="{search_query}">
	{{{ if matchCount }}}
	<div class="alert alert-info">[[search:results-matching, {matchCount}, {search_query}, {time}]] </div>
	{{{ else }}}
	{{{ if search_query }}}
	<div class="alert alert-warning">[[search:no-matches]]</div>
	{{{ end }}}
	{{{ end }}}

	{{{each posts}}}
	<div class="topic-row card clearfix mb-3">
		<div class="card-body">
			<div>
				<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "24px", true)}</a>
				<span class="search-result-text search-result-title"><a href="{config.relative_path}/post/{posts.pid}">{./topic.title}</a></span>
			</div>

			{{{ if showAsPosts }}}
			<div class="search-result-text">
				{./content}
				<p class="fade-out"></p>
			</div>
			{{{ end }}}

			<small class="post-info float-end">
				<a href="{config.relative_path}/category/{./category.slug}">
					<div class="category-item d-inline-block">
						{buildCategoryIcon(./category, "24px", "rounded-circle")}
						{./category.name}
					</div>
				</a> &bull;
				<span class="timeago" title="{./timestampISO}"></span>
			</small>
		</div>
	</div>
	{{{end}}}

	{{{ if users.length }}}
	<!-- IMPORT partials/users_list.tpl -->
	{{{ end }}}

	{{{ if tags.length }}}
	<!-- IMPORT partials/tags_list.tpl -->
	{{{ end }}}

	{{{ if categories.length }}}
	<ul class="categories">
		{{{each categories}}}
		<!-- IMPORT partials/categories/item.tpl -->
		{{{end}}}
	</ul>
	{{{ end }}}

	<!-- IMPORT partials/paginator.tpl -->
</div>