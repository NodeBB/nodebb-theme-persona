<div class="btn-group bottom-sheet {{{ if !terms.length }}}hidden{{{ end }}}">
	<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown">
	{selectedTerm.name} <span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		{{{each terms}}}
		<li role="presentation" class="category">
			<a class="dropdown-item" role="menu-item" href="{config.relative_path}/{terms.url}"><i class="fa fa-fw {{{ if terms.selected }}}fa-check{{{ end }}}"></i>{terms.name}</a>
		</li>
		{{{end}}}
	</ul>
</div>