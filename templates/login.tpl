<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row login">
	<div class="{{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<div class="row">
			{{{ if allowLocalLogin }}}
			<div class="{{{ if alternate_logins }}}col-md-6{{{ else }}}col-md-12{{{ end }}}">
				<div class="login-block">
					<div class="alert alert-danger {{{ if !error }}} hidden{{{ end }}}" id="login-error-notify">
						<strong>[[login:failed-login-attempt]]</strong>
						<p class="mb-0">{error}</p>
					</div>

					<form class="form-horizontal" role="form" method="post" id="login-form">
						<div class="row mb-2">
							<label for="username" class="col-lg-2 col-form-label">{allowLoginWith}</label>
							<div class="col-lg-10">
								<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="nickname" value="{username}"/>
							</div>
						</div>
						<div class="row mb-2">
							<label for="password" class="col-lg-2 col-form-label">[[user:password]]</label>
							<div class="col-lg-10">
								<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" autocomplete="current-password" autocapitalize="off" />
								<p id="caps-lock-warning" class="text-danger hidden">
									<i class="fa fa-exclamation-triangle"></i> [[login:caps-lock-enabled]]
								</p>
							</div>
						</div>
						<div class="row mb-2">
							<div class="col-lg-10 offset-lg-2">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" name="remember" id="remember" checked />
									<label class="form-check-label" for="remember">[[login:remember-me]]</label>
								</div>
							</div>
						</div>

						{{{ each loginFormEntry }}}
						<div class="row mb-2 loginFormEntry {./styleName}">
							<label for="{./inputId}" class="col-lg-2 col-form-label">{./label}</label>
							<div class="col-lg-10">{{./html}}</div>
						</div>
						{{{end}}}

						<input type="hidden" name="_csrf" value="{config.csrf_token}" />
						<input type="hidden" name="noscript" id="noscript" value="true" />
						<div class="row">
							<div class="col-lg-10 offset-lg-2">
								<button class="btn btn-primary btn-lg" id="login" type="submit">[[global:login]]</button>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-10 offset-lg-2">
								{{{ if allowRegistration }}}
								<div>[[login:dont-have-account]] <a href="{config.relative_path}/register">[[register:register]]</a></div>
								{{{ end }}}
								{{{ if allowPasswordReset }}}
								<div>
									<a id="reset-link" href="{config.relative_path}/reset">[[login:forgot-password]]</a>
								</div>
								{{{ end }}}
							</div>
						</div>
					</form>
				</div>
			</div>
			{{{ end }}}

			{{{ if alternate_logins }}}
			<div class="{{{ if allowLocalLogin }}}col-md-6{{{ else }}}col-md-12{{{ end }}}">
				<div class="alt-login-block">
					<h4>[[login:alternative-logins]]</h4>
					<ul class="alt-logins">
						{{{each authentication}}}
						<li class="{authentication.name}"><a rel="nofollow noopener noreferrer" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></a></li>
						{{{end}}}
					</ul>
				</div>
			</div>
			{{{ end }}}
		</div>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>