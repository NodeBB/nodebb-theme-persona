<!-- IMPORT partials/account/header.tpl -->

<div class="row">
	<h1 class="fs-2">{title}</h1>
	<!-- IF showSort -->
	<div class="btn-toolbar justify-content-end mb-2">
		<div class="btn-group bottom-sheet" component="thread/sort">
			<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false"><span>[[topic:sort-by]]</span> <span class="caret"></span></button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu">
				{{{each sortOptions }}}
				<li><a class="dropdown-item" href="{config.relative_path}{sortOptions.url}" role="menuitem"><i class="fa fa-fw {{{if sortOptions.selected}}}fa-check{{{end}}}"></i>{sortOptions.name}</a></li>
				{{{end}}}
			</ul>
		</div>
	</div>
	<!-- ENDIF showSort -->

	<!-- IF !topics.length -->
		<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->