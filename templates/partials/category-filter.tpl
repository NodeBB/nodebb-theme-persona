<div component="category/dropdown" class="btn-group pull-right category-dropdown-container bottom-sheet <!-- IF !categories.length -->hidden<!-- ENDIF !categories.length -->">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <!-- IF selectedCategory --><span class="fa-stack" style="{function.generateCategoryBackground, selectedCategory}"><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span> {selectedCategory.name}<!-- ELSE -->
        [[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret"></span>
    </button>
    <div component="category-selector-search" class="hidden">
        <input type="text" class="form-control" autocomplete="off">
    </div>
    <ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
        <li role="presentation" class="category">
            <a role="menu-item" href="{config.relative_path}/{allCategoriesUrl}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
        </li>
        {{{each categories}}}
        <li role="presentation" class="category" data-cid="{categories.cid}" data-parent-cid="{categories.parentCid}" data-name="{categories.name}">
            <a role="menu-item" href="#">{categories.level}<i component="category/select/icon" class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i><span component="category-markup"><!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</span></a>
        </li>
        {{{end}}}
    </ul>
</div>