<!-- IMPORT partials/account/header.tpl -->

<form class="form-horizontal edit-form">
	<div class="mb-3">
		<label class="form-label fw-bold" for="inputNewUsername">{{tx("user:username")}}</label>
		<input class="form-control" type="text" id="inputNewUsername" placeholder="{{tx("user:username")}}" value="{username}">
	</div>

	<!-- disables autocomplete on FF --><input type="password" style="display:none">

	<!-- IF isSelf -->
	<div class="mb-3">
		<label class="form-label fw-bold" for="inputCurrentPassword">{{tx("user:current-password")}}</label>
		<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="{{tx("user:current-password")}}" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
	</div>
	<!-- ENDIF isSelf -->

	<input type="hidden" name="uid" id="inputUID" value="{uid}" />

	<div class="form-actions">
		<button id="submitBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> {{tx("user:change-username")}}</button>
	</div>
</form>

<!-- IMPORT partials/account/footer.tpl -->