<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-md-12">
		<div class="login-block">
			<div class="alert alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>[[login:failed_login_attempt]]</strong>
				<p>{error}</p>
			</div>

			<form class="form-horizontal" role="form" method="post" id="login-form">
				<div class="form-group">
					<label for="username" class="col-lg-2 control-label">{allowLoginWith}</label>
					<div class="col-lg-10">
						<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}"/>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-lg-2 control-label">[[user:password]]</label>
					<div class="col-lg-10">
						<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" <!-- IF username -->autocomplete="off"<!-- ENDIF username -->/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="remember" id="remember" checked /> [[login:remember_me]]
							</label>
						</div>
					</div>
				</div>
				<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				<input type="hidden" name="noscript" id="noscript" value="true" />
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>
						&nbsp; <a id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
					</div>
				</div>
			</form>

		</div>
	</div>
</div>
