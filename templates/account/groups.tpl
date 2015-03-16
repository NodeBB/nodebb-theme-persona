
<!-- IMPORT partials/account_menu.tpl -->

<div id="groups-list" class="groups">
	<!-- IF !groups.length -->
	<div class="alert alert-warning">[[groups:no_groups_found]]</div>
	<!-- ELSE -->
	<!-- IMPORT partials/groups/list.tpl -->
	<!-- ENDIF !groups.length -->
</div>
