<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-xs-6 col-xs-offset-3">
		<p class="lead text-center">
			[[register:interstitial.intro]]
		</p>
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
		<div class="col-xs-6 col-xs-offset-3">
			<button class="btn btn-primary btn-block">Submit</button>
		</div>
	</div>
</form>