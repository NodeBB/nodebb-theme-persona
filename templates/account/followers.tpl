<div class="account">
	<!-- IMPORT partials/account_menu.tpl -->

	<div class="users">

		<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
			<!-- IMPORT partials/users_list.tpl -->
		</ul>

		<!-- IF !users.length -->
		<div class="alert alert-warning">[[user:has_no_follower]]</div>
		<!-- ENDIF !users.length -->
	</div>

</div>