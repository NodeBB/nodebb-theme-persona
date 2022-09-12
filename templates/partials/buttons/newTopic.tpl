<noscript><div class="dropdown" component="category-selector"></noscript>
<label component="category/post" for="category-dropdown-check" class="btn btn-primary" id="new_topic" role="button">
	[[category:new_topic_button]]
</label>
<noscript>
	<input type="checkbox" class="hidden" id="category-dropdown-check" aria-hidden="true">
	<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
		{{{each categories}}}
		<li role="presentation" class="category {{{if categories.disabledClass}}}disabled{{{end}}}">
			<a role="menu-item" href="{config.relative_path}/compose?cid={categories.cid}">{categories.level}
				<span component="category-markup">
					<div class="category-item d-inline-block">
						<div role="presentation" class="icon float-start" style="{function.generateCategoryBackground}">
							<i class="fa fa-fw {categories.icon}"></i>
						</div>
						{categories.name}
					</div>
				</span>
			</a>
		</li>
		{{{end}}}
	</ul>
</div>
</noscript>
