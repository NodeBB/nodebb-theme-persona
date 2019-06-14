<div component="category-selector" class="btn-group <!-- IF pullRight -->pull-right<!-- ENDIF pullRight -->">
	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		<span component="category-selector-selected"><!-- IF selectedCategory --><span class="fa-stack" style="{function.generateCategoryBackground, selectedCategory}"><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span> {selectedCategory.name}<!-- ELSE -->
		[[topic:thread_tools.select_category]]<!-- ENDIF selectedCategory --></span> <span class="caret"></span>
	</button>
	<div component="category-selector-search" class="hidden">
		<input type="text" class="form-control" autocomplete="off">
	</div>
	<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
		<li component="category/no-matches" role="presentation" class="category hidden">
			<a role="menu-item">[[search:no-matches]]</a>
		</li>
		{{{each categories}}}
		<li role="presentation" class="category <!-- IF categories.disabledClass -->disabled<!-- ENDIF categories.disabledClass -->" data-cid="{categories.cid}" data-name="{categories.name}" data-parent-cid="{categories.parentCid}">
			<a role="menu-item">{categories.level}<span component="category-markup"><!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i style="color: {categories.color};" class="fa fa-stack-1x fa-fw {categories.icon}"></i></span><!-- ENDIF categories.icon --> {categories.name}</span></a>
		</li>
		{{{end}}}
	</ul>
</div>