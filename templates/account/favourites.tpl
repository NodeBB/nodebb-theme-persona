<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[topic:favourites.has_no_favourites]]</div>
	<!-- ENDIF !posts.length -->

	<div class="row">

		<!-- IMPORT partials/posts_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>

<!-- IMPORT partials/variables/account.tpl -->