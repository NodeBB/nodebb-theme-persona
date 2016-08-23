<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row">
		<h1>[[pages:{template.name}, {username}]]</h1>
		
		<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
			<!-- IMPORT partials/users_list.tpl -->
		</ul>

		<!-- IF !users.length -->
		<div class="alert alert-warning text-xs-center">[[user:follows_no_one]]</div>
		<!-- ENDIF !users.length -->
	</div>
</div>