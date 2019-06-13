<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-xs-12 col-sm-8 col-sm-offset-2">
		<p class="lead text-center">
			[[register:interstitial.intro]]
		</p>

		<!-- IF errors.length -->
		<div class="alert alert-warning">
			<p>
				[[register:interstitial.errors-found]]
			</p>
			<ul>
				{{{each errors}}}
				<li>@value</li>
				{{{end}}}
			</ul>
		</div>
		<!-- ENDIF errors.length -->
	</div>
</div>

<form role="form" method="post" action="{config.relative_path}/register/complete/?_csrf={config.csrf_token}" enctype="multipart/form-data">
	{{{each sections}}}
	<div class="row">
		<div class="col-xs-12 col-sm-8 col-sm-offset-2">
			<div class="panel panel-default">
				<div class="panel-body">
					@value
				</div>
			</div>
		</div>
	</div>
	{{{end}}}

	<div class="row">
		<div class="col-xs-12 col-sm-8 col-sm-offset-2">
			<button class="btn btn-primary btn-block">[[topic:composer.submit]]</button>
		</div>
	</div>
</form>
<form role="form" method="post" action="{config.relative_path}/register/abort">
	<p class="text-center">
		<button class="btn btn-link">[[register:cancel_registration]]</button>
	</p>
</form>