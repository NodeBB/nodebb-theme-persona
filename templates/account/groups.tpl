<!-- IMPORT partials/account/header.tpl -->

<div class="row">
	<h1 class="fs-2">[[pages:{template.name}, {username}]]</h1>

	<div class="col-12 groups list">
		<div component="groups/container" id="groups-list" class="row">
			<!-- IF !groups.length -->
			<div class="alert alert-warning text-center">[[groups:no-groups-found]]</div>
			<!-- ELSE -->
			<!-- IMPORT partials/groups/list.tpl -->
			<!-- ENDIF !groups.length -->
		</div>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->