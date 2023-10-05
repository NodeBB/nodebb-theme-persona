<noscript><div class="dropdown" component="category-selector"></noscript>
<button component="category/post" for="category-dropdown-check" class="btn btn-primary text-nowrap" id="new_topic" role="button">
	[[category:new-topic-button]]
</button>
<noscript>
	<input type="checkbox" class="hidden" id="category-dropdown-check" aria-hidden="true">
	<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
		{{{each categories}}}
		<li role="presentation" class="category {{{if categories.disabledClass}}}disabled{{{end}}}">
			<a role="menu-item" href="{config.relative_path}/compose?cid={categories.cid}">{categories.level}
				<span component="category-markup">
					<div class="category-item d-inline-block">
						{buildCategoryIcon(@value, "24px", "rounded-circle")}
						{categories.name}
					</div>
				</span>
			</a>
		</li>
		{{{end}}}
	</ul>
</div>
</noscript>
