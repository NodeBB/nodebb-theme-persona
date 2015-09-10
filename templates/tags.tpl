<div class="tags">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF tags.length -->
	<input class="form-control" type="text" id="tag-search" placeholder="[[global:search]]"/>
	<!-- ENDIF tags.length -->

	<!-- IF !tags.length -->
	<div class="alert alert-warning">[[tags:no_tags]]</div>
	<!-- ENDIF !tags.length -->

	<div class="category row">
		<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>
