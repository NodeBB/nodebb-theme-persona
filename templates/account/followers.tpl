<!-- IMPORT partials/account/header.tpl -->

<div class="users row">
	<div class="col-12">
	<h1 class="fs-2">[[pages:{template.name}, {username}]]</h1>

	<!-- IMPORT partials/users_list.tpl -->

	<!-- IF !users.length -->
	<div class="alert alert-warning text-center">[[user:has-no-follower]]</div>
	<!-- ENDIF !users.length -->

	<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
