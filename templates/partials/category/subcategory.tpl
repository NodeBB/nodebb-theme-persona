{{{ if (children.length || hasMoreSubCategories) }}}
<div class="subcategory">
	{{{ if hasMoreSubCategories }}}
	<div class="mb-2"><!-- IMPORT partials/category/selector-dropdown-left.tpl --></div>
	{{{ else }}}
	<p>[[category:subcategories]]</p>
	{{{ end }}}

	<ul component="category/subcategory/container" class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
		{{{each children}}}
		<!-- IMPORT partials/categories/item.tpl -->
		{{{end}}}
	</ul>
	{{{ if (hasMoreSubCategories && children.length) }}}
	<button class="btn btn-ghost btn-sm mb-2" component="category/load-more-subcategories">[[category:x-more-categories, {subCategoriesLeft}]]</button>
	{{{ end }}}
</div>
{{{ end }}}