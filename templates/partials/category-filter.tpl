<div component="category/dropdown" class="btn-group pull-right category-dropdown-container bottom-sheet <!-- IF !categories.length -->hidden<!-- ENDIF !categories.length -->">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <!-- IF selectedCategory --><!-- IF selectedCategory.icon --><span class="fa-stack"><i style="color: {selectedCategory.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span><!-- ENDIF selectedCategory.icon --> {selectedCategory.name}<!-- ELSE -->
        [[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret"></span>
    </button>
    <ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
        <li role="presentation" class="category">
            <a role="menu-item" href="{config.relative_path}/{allCategoriesUrl}"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
        </li>
        <!-- BEGIN categories -->
        <li role="presentation" class="category" data-cid="{categories.cid}" data-parent-cid="{categories.parentCid}">
            <a role="menu-item" href="#"><i component="category/select/icon" class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
        </li>
        <!-- END categories -->
    </ul>
</div>