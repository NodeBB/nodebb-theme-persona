<!-- IMPORT partials/account/header.tpl -->

<div class="row">
	<h1 class="fs-2">{title}</h1>
	<div class="col-lg-12 mb-2">
		<div class="btn-group bottom-sheet" component="category/watch/all">
			<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
				<span>[[user:change-all]]</span>
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a class="dropdown-item" href="#" component="category/watching" data-state="watching" role="menuitem"><i class="fa fa-fw fa-bell-o"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
				<li><a class="dropdown-item" href="#" component="category/tracking" data-state="tracking" role="menuitem"><i class="fa fa-fw fa-inbox"></i> [[category:tracking]]<p class="help-text"><small>[[category:tracking.description]]</small></p></a></li>
				<li><a class="dropdown-item" href="#" component="category/notwatching" data-state="notwatching" role="menuitem"><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]<p class="help-text"><small>[[category:not-watching.description]]</small></p></a></li>
				<li><a class="dropdown-item" href="#" component="category/ignoring" data-state="ignoring" role="menuitem"><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
			</ul>
		</div>
	</div>
	<div class="col-lg-12">
		<ul class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
			{{{each categories}}}
			<!-- IMPORT partials/account/category-item.tpl -->
			{{{end}}}
		</ul>
		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->