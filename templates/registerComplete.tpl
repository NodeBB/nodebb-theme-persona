<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-12 col-sm-8 offset-sm-2">
		<p class="lead text-center">
			{{{ if register }}}[[register:interstitial.intro-new]]{{{ else }}}[[register:interstitial.intro]]{{{ end }}}
		</p>

		<!-- IF errors.length -->
		<div class="alert alert-warning">
			<p>
				[[register:interstitial.errors-found]]
			</p>
			<ul>
				{{{each errors}}}
				<li>{@value}</li>
				{{{end}}}
			</ul>
		</div>
		<!-- ENDIF errors.length -->
	</div>
</div>

<form role="form" method="post" action="{config.relative_path}/register/complete/?_csrf={config.csrf_token}" enctype="multipart/form-data">
	{{{each sections}}}
	<div class="row">
		<div class="col-12 col-sm-8 offset-sm-2">
			<div class="card">
				<div class="card-body">
					{@value}
				</div>
			</div>
		</div>
	</div>
	{{{end}}}

	<div class="row mt-3">
		<div class="col-12 col-sm-8 offset-sm-2 d-grid">
			<button class="btn btn-primary">[[topic:composer.submit]]</button>
		</div>
	</div>
</form>
<form role="form" method="post" action="{config.relative_path}/register/abort">
	<div class="row mt-2">
		<div class="col-12 col-sm-8 offset-sm-2 d-grid">
			<p class="d-grid text-center">
				<button class="btn btn-link">{{{ if register }}}[[register:cancel_registration]]{{{ else }}}[[modules:bootbox.cancel]]{{{ end }}}</button>
			</p>
		</div>
	</div>
</form>