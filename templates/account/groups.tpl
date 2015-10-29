<div class="account">
	<!-- IMPORT partials/account_menu.tpl -->

	<div class="groups list">
		<div component="groups/container" id="groups-list" class="row">
			<!-- IF !groups.length -->
			<div class="alert alert-warning">[[groups:no_groups_found]]</div>
			<!-- ELSE -->
			<!-- IMPORT partials/groups/list.tpl -->
			<!-- ENDIF !groups.length -->
		</div>
	</div>
</div>