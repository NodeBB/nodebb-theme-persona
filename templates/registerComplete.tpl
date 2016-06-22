<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-xs-6 col-xs-offset-3">
		<p class="lead text-center">
			[[register:interstitial.intro]]
		</p>

		<!-- IF errors.length -->
		<div class="alert alert-warning">
			<p>
				[[register:interstitial.errors-found]]
			</p>
			<ul>
				<!-- BEGIN errors -->
				<li>@value</li>
				<!-- END errors -->
			</ul>
		</div>
		<!-- ENDIF errors.length -->
	</div>
</div>

<form role="form" method="post">
	<!-- BEGIN sections -->
	<div class="row">
		<div class="col-xs-6 col-xs-offset-3">
			<div class="panel panel-default">
				<div class="panel-body">
					@value
				</div>
			</div>
		</div>
	</div>
	<!-- END sections -->

	<div class="row">
		<input type="hidden" name="_csrf" value="{config.csrf_token}" />
		<div class="col-xs-6 col-xs-offset-3">
			<button class="btn btn-primary btn-block">Submit</button>
			<p class="text-center">
				<br />
				<a target="_top" href="{config.relative_path}/register/abort">[[register:cancel_registration]]</a>
			</p>
		</div>
	</div>
</form>