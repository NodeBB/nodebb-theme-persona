<!-- IMPORT partials/account/header.tpl -->

<form class="edit-form">
	<!-- disables autocomplete on FF --><input type="password" style="display:none">

	<!-- IF isSelf -->
	<div class="mb-3">
		<label class="form-label fw-bold" for="inputCurrentPassword">{{tx("user:current-password")}}</label>
		<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="{{tx("user:current-password")}}" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
	</div>
	<!-- ENDIF isSelf -->

	<div class="mb-3">
		<label class="form-label fw-bold" for="inputNewPassword">{{tx("user:new-password")}}</label>
		<input class="form-control" type="password" id="inputNewPassword" placeholder="{{tx("user:new-password")}}" value="">
		<span class="form-text" id="password-notify"></span>
	</div>

	<div class="mb-3">
		<label class="form-label fw-bold" for="inputNewPasswordAgain">{{tx("user:confirm-password")}}</label>
		<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="{{tx("user:confirm-password")}}" value="">
		<span class="form-text" id="password-confirm-notify"></span>
	</div>

	<div class="form-actions">
		<button id="changePasswordBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> {{tx("user:change-password")}}</button>
	</div>
</form>

<!-- IMPORT partials/account/footer.tpl -->