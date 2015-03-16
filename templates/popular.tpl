<div class="popular">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul class="nav nav-pills">
		<li><a href='{relative_path}/popular/daily'>[[recent:day]]</a></li>
		<li><a href='{relative_path}/popular/weekly'>[[recent:week]]</a></li>
		<li><a href='{relative_path}/popular/monthly'>[[recent:month]]</a></li>
		<li><a href='{relative_path}/popular/alltime'>[[recent:alltime]]</a></li>
	</ul>

	<br />

	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		<strong>[[recent:no_popular_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12">
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
</div>