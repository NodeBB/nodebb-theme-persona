<div class="btn-group bottom-sheet{{{ if !filters.length }}} hidden{{{ end }}}">
	<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline">{selectedFilter.name}</span><span class="visible-xs-inline"><i class="fa fa-fw {selectedFilter.icon}"></i></span> <span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		{{{each filters}}}
		<li role="presentation" class="category {{{if filters.selected}}}selected{{{end}}}">
			<a class="dropdown-item" role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw {{{ if filters.selected }}}fa-check{{{ end }}}"></i>{filters.name}</a>
		</li>
		{{{end}}}
	</ul>
</div>