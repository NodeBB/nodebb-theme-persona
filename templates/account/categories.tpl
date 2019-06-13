<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h1>{title}</h1>

		<div class="col-lg-12">
			<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
				{{{each categories}}}
				<!-- IMPORT partials/account/category-item.tpl -->
				{{{end}}}
			</ul>
		</div>
	</div>
</div>
