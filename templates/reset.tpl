<!-- IMPORT partials/breadcrumbs.tpl -->


<div class="alert alert-info">
	[[reset_password:enter_email]]
</div>

<div class="well">
	<div class="alert alert-success" id="success" style="display:none">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>[[reset_password:password_reset_sent]]</strong>
	</div>
	<div class="alert alert-danger" id="error" style="display:none">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>[[reset_password:invalid_email]]</strong>
	</div>
	<form onsubmit="return false;">
		<input type="text" class="form-control input-block input-lg" placeholder="[[reset_password:enter_email_address]]" id="email" />

		<br />
		<button class="btn btn-primary btn-block btn-lg" id="reset" type="submit">[[reset_password:reset_password]]</button>
	</form>
</div>
