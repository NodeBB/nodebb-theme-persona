<!-- IMPORT partials/account/header.tpl -->
<h1 class="fs-4">{{tx("pages:account/groups", txEscape(username))}}</h1>
<div class="row">
	<div class="col-12 groups list">
		<div component="groups/container" id="groups-list" class="row">
			<!-- IF !groups.length -->
			<div class="alert alert-warning text-center">{{tx("groups:no-groups-found")}}</div>
			<!-- ELSE -->
			<!-- IMPORT partials/groups/list.tpl -->
			<!-- ENDIF !groups.length -->
		</div>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->