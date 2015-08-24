
<!-- IMPORT partials/account_menu.tpl -->

<div component="groups/container" id="groups-list" class="groups row">
	<!-- IF !groups.length -->
	<div class="alert alert-warning">[[groups:no_groups_found]]</div>
	<!-- ELSE -->
	<!-- IMPORT partials/groups/list.tpl -->
	<!-- ENDIF !groups.length -->
</div>
