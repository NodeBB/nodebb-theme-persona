<!-- IMPORT partials/breadcrumbs.tpl -->


<div class="alert alert-info">
	[[reset_password:enter_email]]
</div>

<div class="card card-body bg-light">
	<div class="alert alert-success hide" id="success">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		[[reset_password:password_reset_sent]]
	</div>
	<div class="alert alert-danger hide" id="error">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		[[reset_password:invalid_email]]
	</div>
	<form onsubmit="return false;">
		<div class="mb-3">
			<input type="email" class="form-control form-control-lg" id="email" placeholder="[[reset_password:enter_email_address]]" autocomplete="off">
		</div>
		<div class="d-grid">
			<button class="btn btn-primary btn-lg" id="reset" type="submit">[[reset_password:reset_password]]</button>
		</div>
	</form>
</div>
