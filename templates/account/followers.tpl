<!-- IMPORT partials/account/header.tpl -->

<h1 class="fs-4">{{tx("pages:account/followers", txEscape(username))}}</h1>
<div class="users row">
	<div class="col-12">
		<!-- IMPORT partials/users_list.tpl -->

		<!-- IF !users.length -->
		<div class="alert alert-warning text-center">{{tx("user:has-no-follower")}}</div>
		<!-- ENDIF !users.length -->

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
