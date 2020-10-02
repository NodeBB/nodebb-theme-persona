<div component="category/dropdown" class="btn-group pull-right category-dropdown-container bottom-sheet {{{ if !categories.length }}]hidden{{{end}}}">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        {{{ if selectedCategory }}}<span class="fa-stack" style="{function.generateCategoryBackground, selectedCategory}"><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span> <span class="visible-sm-inline visible-md-inline visible-lg-inline">{selectedCategory.name}</span>{{{ else }}}
        <span class="visible-sm-inline visible-md-inline visible-lg-inline">[[unread:all_categories]]</span><span class="visible-xs-inline"><i class="fa fa-fw fa-list"></i></span>{{{ end }}} <span class="caret"></span>
    </button>
    <div component="category-selector-search" class="hidden">
        <input type="text" class="form-control" autocomplete="off">
    </div>
    <ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
        <li role="presentation" class="category">
            <a role="menu-item" href="{config.relative_path}/{allCategoriesUrl}"><i component="category/select/icon" class="fa fa-fw fa-check {{{if selectedCategory}}}invisible{{{end}}}"></i> [[unread:all_categories]]</a>
        </li>
        {{{each categories}}}
        <li role="presentation" class="category {{{ if categories.disabledClass }}}disabled{{{ end }}}" data-cid="{categories.cid}" data-parent-cid="{categories.parentCid}" data-name="{categories.name}">
            <a role="menu-item" href="#">{categories.level}<i component="category/select/icon" class="fa fa-fw fa-check {{{ if !categories.selected }}}invisible{{{ end }}}"></i><span component="category-markup">{{{ if categories.icon }}}<span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span>{{{ end }}} {categories.name}</span></a>
        </li>
        {{{end}}}
    </ul>
</div>