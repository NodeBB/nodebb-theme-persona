<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<h2>[[user:consent.title]]</h2>
	<p class="lead">[[user:consent.lead]]</p>
	<p>[[user:consent.intro]]</p>

	<hr />

	<div class="row">
		<div class="col-sm-6">
			<!-- IF gdpr_consent -->
			<div class="alert alert-success">
				<i class="fa fa-check pull-right fa-3x"></i>
				[[user:consent.received]]
			</div>
			<!-- ELSE -->
			<div class="alert alert-warning">
				[[user:consent.not-received]]
				<br /><br />
				<div class="text-center">
					<button class="btn btn-warning" data-action="consent">[[user:consent.give]]</button>
				</div>
			</div>
			<!-- END -->
			<div class="panel panel-default">
				<div class="panel-body">
					<p>[[user:consent.email-intro]]</p>
					<!-- IF digest.enabled -->
					<p>[[user:consent.digest-frequency, {digest.frequency}]]</p>
					<!-- ELSE -->
					[[user:consent.digest-off]]
					<!-- END -->

					<div class="text-center">
						<a class="btn btn-default" href="./settings">
							<i class="fa fa-cog"></i>
							[[pages:account/settings]]
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-body">
					<p><strong>[[user:consent.right-of-access]]</strong></p>
					<p>[[user:consent.right-of-access-description]]</p>
					<p><strong>[[user:consent.right-to-rectification]]</strong></p>
					<p>[[user:consent.right-to-rectification-description]]</p>
					<p><strong>[[user:consent.right-to-erasure]]</strong></p>
					<p>[[user:consent.right-to-erasure-description]]</p>
					<p><strong>[[user:consent.right-to-data-portability]]</strong></p>
					<p>[[user:consent.right-to-data-portability-description]]</p>

					<div class="btn-group-vertical btn-block">
						<a class="btn btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/profile">
							<i class="fa fa-download"></i> [[user:consent.export-profile]]
						</a>
						<a class="btn btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/posts">
							<i class="fa fa-download"></i> [[user:consent.export-posts]]
						</a>
						<a class="btn btn-default" href="{config.relative_path}/api/user/uid/{userslug}/export/uploads">
							<i class="fa fa-download"></i> [[user:consent.export-uploads]]
						</a>
					</div>
				</div>
			</div>
	</div>
</div>