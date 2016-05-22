<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header"></div>
<div class="row">
	<div class="col-lg-9 col-sm-12" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
		<h1 class="categories-title">[[pages:categories]]</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			<!-- BEGIN categories -->
			<!-- IMPORT partials/categories/item.tpl -->
			<!-- END categories -->
		</ul>
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12"></div>
</div>
<div widget-area="footer"></div>
