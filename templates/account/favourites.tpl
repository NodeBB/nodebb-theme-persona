<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="favourites row">

		<!-- IF !posts.length -->
			<div class="alert alert-warning text-center">[[topic:favourites.has_no_favourites]]</div>
		<!-- ENDIF !posts.length -->

		<div class="col-xs-12">
			<!-- IMPORT partials/posts_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>