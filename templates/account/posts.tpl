
<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[user:has_no_posts]]</div>
	<!-- ENDIF !posts.length -->

	<div class="row">

		<!-- IMPORT partials/posts_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>

<!-- IMPORT partials/variables/account.tpl -->