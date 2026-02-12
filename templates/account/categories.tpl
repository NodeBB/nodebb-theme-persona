<!-- IMPORT partials/account/header.tpl -->

<div>
	<div class="d-flex justify-content-between align-items-center mb-3">
		<h1 class="fs-4">{title}</h1>
		<div class="mb-2">
			<div class="dropdown bottom-sheet" component="category/watch/all">
				<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
					<span>[[user:change-all]]</span>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu p-1" role="menu">
					<li><a class="dropdown-item rounded-1" href="#" component="category/watching" data-state="watching" role="menuitem"><i class="fa fa-fw fa-bell-o"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
					<li><a class="dropdown-item rounded-1" href="#" component="category/tracking" data-state="tracking" role="menuitem"><i class="fa fa-fw fa-inbox"></i> [[category:tracking]]<p class="help-text"><small>[[category:tracking.description]]</small></p></a></li>
					<li><a class="dropdown-item rounded-1" href="#" component="category/notwatching" data-state="notwatching" role="menuitem"><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]<p class="help-text"><small>[[category:not-watching.description]]</small></p></a></li>
					<li><a class="dropdown-item rounded-1" href="#" component="category/ignoring" data-state="ignoring" role="menuitem"><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="">
		<ul class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
			{{{each categories}}}
			<!-- IMPORT partials/account/category-item.tpl -->
			{{{end}}}
		</ul>
		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->