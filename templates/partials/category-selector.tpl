<div component="category-selector" class="btn-group {{{ if pullRight }}}pull-right{{{ end }}}">
	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		<span component="category-selector-selected">{{{ if selectedCategory }}}<span class="fa-stack" style="{function.generateCategoryBackground, selectedCategory}"><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span> {selectedCategory.name}{{{ else }}}
		[[topic:thread_tools.select_category]]{{{ end }}}</span> <span class="caret"></span>
	</button>
	<div component="category-selector-search" class="hidden">
		<input type="text" class="form-control" autocomplete="off">
	</div>
	<ul component="category/list" class="dropdown-menu category-dropdown-menu {{{if pullRight}}}dropdown-menu-right{{{end}}}" role="menu">
		<li component="category/no-matches" role="presentation" class="category hidden">
			<a role="menu-item">[[search:no-matches]]</a>
		</li>
		{{{each categories}}}
		<li role="presentation" class="category {{{ if categories.disabledClass }}}disabled {{{ end }}}" data-cid="{categories.cid}" data-name="{categories.name}" data-parent-cid="{categories.parentCid}">
			<a role="menu-item">{categories.level}<span component="category-markup" style="{{{ if categories.match }}}font-weight: bold;{{{end}}}">{{{ if categories.icon }}}<span class="fa-stack" style="{function.generateCategoryBackground}"><i style="color: {categories.color};" class="fa fa-stack-1x fa-fw {categories.icon}"></i></span>{{{ end }}} {categories.name}</span></a>
		</li>
		{{{end}}}
	</ul>
</div>