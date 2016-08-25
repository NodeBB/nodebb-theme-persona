<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row register">
	<div class="{register_window:spansize}">
		<div>
			<div class="alert alert-danger<!-- IF !error --> hidden-xs-up<!-- ENDIF !error -->" id="register-error-notify" >
				<strong>[[error:registration-error]]</strong>
				<p>{error}</p>
			</div>
			<form component="register/local" role="form" action="{config.relative_path}/register" method="post">
				<div class="form-group row">
					<label for="email" class="col-xl-4 col-form-label text-xs-right">[[register:email_address]]</label>
					<div class="col-xl-8">
						<input class="form-control" type="email" placeholder="[[register:email_address_placeholder]]" name="email" id="email" autocorrect="off" autocapitalize="off" />
						<div id="email-feedback" class="form-control-feedback"></div>
						<small class="form-text text-muted">[[register:help.email]]</small>
					</div>
				</div>
				<div class="form-group row">
					<label for="username" class="col-xl-4 col-form-label text-xs-right">[[register:username]]</label>
					<div class="col-xl-8">
						<input class="form-control" type="text" placeholder="[[register:username_placeholder]]" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="off" />
						<div id="username-feedback" class="form-control-feedback"></div>
						<small class="form-text text-muted">[[register:help.username_restrictions, {minimumUsernameLength}, {maximumUsernameLength}]]</small>
					</div>
				</div>
				<div class="form-group row">
					<label for="password" class="col-xl-4 col-form-label text-xs-right">[[register:password]]</label>
					<div class="col-xl-8">
						<input class="form-control" type="password" placeholder="[[register:password_placeholder]]" name="password" id="password" />
						<div id="password-feedback" class="form-control-feedback"></div>
						<small class="form-text text-muted">[[register:help.minimum_password_length, {minimumPasswordLength}]]</small>
					</div>
				</div>
				<div class="form-group row">
					<label for="password-confirm" class="col-xl-4 col-form-label text-xs-right">[[register:confirm_password]]</label>
					<div class="col-xl-8">
						<input class="form-control" type="password" placeholder="[[register:confirm_password_placeholder]]" name="password-confirm" id="password-confirm" />
						<div id="password-confirm-feedback" class="form-control-feedback"></div>
					</div>
				</div>

				<!-- BEGIN regFormEntry -->
				<div class="form-group row">
					<label for="register-{regFormEntry.styleName}" class="col-xl-4 col-form-label text-xs-right">{regFormEntry.label}</label>
					<div id="register-{regFormEntry.styleName}" class="col-xl-8">
						{{regFormEntry.html}}
					</div>
				</div>
				<!-- END regFormEntry -->

				<div class="form-group row">
					<div class="offset-xl-4 col-xl-8">
						<button class="btn btn-primary btn-lg btn-block" id="register" type="submit">[[register:register_now_button]]</button>
					</div>
				</div>
				<input id="referrer" type="hidden" name="referrer" value="" />
				<input id="token" type="hidden" name="token" value="" />
			</form>
		</div>
	</div>

	<!-- IF alternate_logins -->
	<div class="col-lg-6">
		<div>
			<h4>[[register:alternative_registration]]</h4>
			<ul class="alt-logins">
				<!-- BEGIN authentication -->
				<li class="{authentication.name}"><a rel="nofollow" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></i></a></li>
				<!-- END authentication -->
			</ul>
		</div>
	</div>
	<!-- ENDIF alternate_logins -->
</div>