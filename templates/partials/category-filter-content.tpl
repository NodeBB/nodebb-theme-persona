<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown">
    {{{ if selectedCategory }}}
    <span class="category-item">
        {buildCategoryIcon(selectedCategory, "24px", "rounded-circle")}
        <span class="visible-sm-inline visible-md-inline visible-lg-inline">{selectedCategory.name}</span>
    </span>
    {{{ else }}}
    <span class="visible-sm-inline visible-md-inline visible-lg-inline">[[unread:all_categories]]</span><span class="visible-xs-inline"><i class="fa fa-fw fa-list"></i></span>{{{ end }}} <span class="caret"></span>
</button>
<div component="category-selector-search" class="hidden position-absolute">
    <input type="text" class="form-control" autocomplete="off">
</div>
<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
    <li role="presentation" class="category" data-all="all">
        <a class="dropdown-item" role="menu-item" href="{config.relative_path}/{allCategoriesUrl}"><i component="category/select/icon" class="fa fa-fw fa-check {{{if selectedCategory}}}invisible{{{end}}}"></i> [[unread:all_categories]]</a>
    </li>
    {{{each categoryItems}}}
    <li role="presentation" class="category {{{ if ../disabledClass }}}disabled{{{ end }}}" data-cid="{../cid}" data-parent-cid="{../parentCid}" data-name="{../name}">
        <a class="dropdown-item" role="menu-item" href="#">{../level}<i component="category/select/icon" class="fa fa-fw fa-check {{{ if !../selected }}}invisible{{{ end }}}"></i>
            <span component="category-markup" style="{{{ if ../match }}}font-weight: bold;{{{end}}}">
                <div class="category-item d-inline-block">
                    {buildCategoryIcon(@value, "24px", "rounded-circle")}
                    {./name}
                </div>
            </span>
        </a>
    </li>
    {{{end}}}
</ul>