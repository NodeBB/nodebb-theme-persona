
<!-- IMPORT partials/account_menu.tpl -->

<div class="users account">
	<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
		<!-- IMPORT partials/users_list.tpl -->
	</ul>

	<!-- IF !users.length -->
	<div class="alert alert-warning">[[user:follows_no_one]]</div>
	<!-- ENDIF !users.length -->
</div>

