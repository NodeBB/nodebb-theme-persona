<!-- IMPORT partials/account/header.tpl -->

<div class="row">
	<h1 class="fs-2">{title}</h1>

	<!-- IF !posts.length -->
		<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
	<!-- ENDIF !posts.length -->

	<div class="col-12">
		<!-- IMPORT partials/posts_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->