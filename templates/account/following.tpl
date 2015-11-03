<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row">
		<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
			<!-- IMPORT partials/users_list.tpl -->
		</ul>

		<!-- IF !users.length -->
		<div class="alert alert-warning text-center">[[user:follows_no_one]]</div>
		<!-- ENDIF !users.length -->
	</div>
</div>