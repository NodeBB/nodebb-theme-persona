<!-- IMPORT partials/account/header.tpl -->

<form class="form-horizontal edit-form">
	<div class="mb-2">
		<label class="form-label fw-bold" for="inputNewUsername">[[user:username]]</label>
		<input class="form-control" type="text" id="inputNewUsername" placeholder="[[user:username]]" value="{username}">
	</div>

	<!-- disables autocomplete on FF --><input type="password" style="display:none">

	<!-- IF isSelf -->
	<div class="mb-2">
		<label class="form-label fw-bold" for="inputCurrentPassword">[[user:current-password]]</label>
		<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current-password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
	</div>
	<!-- ENDIF isSelf -->

	<input type="hidden" name="uid" id="inputUID" value="{uid}" />

	<br/>
	<div class="form-actions">
		<button id="submitBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change-username]]</button>
	</div>
</form>

<!-- IMPORT partials/account/footer.tpl -->