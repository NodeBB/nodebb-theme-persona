<!-- IMPORT partials/account/header.tpl -->
<h2>[[user:consent.title]]</h2>
<p class="lead">[[user:consent.lead]]</p>
<p>[[user:consent.intro]]</p>

<hr />

<div class="row">
	<div class="col-sm-6">
		<!-- IF gdpr_consent -->
		<div class="alert alert-success d-flex gap-3">
			[[user:consent.received]]
			<i class="fa fa-check fa-3x"></i>
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
		<div class="card">
			<div class="card-body">
				<p>[[user:consent.email-intro]]</p>
				<!-- IF digest.enabled -->
				<p>[[user:consent.digest-frequency, {digest.frequency}]]</p>
				<!-- ELSE -->
				[[user:consent.digest-off]]
				<!-- END -->

				<div class="text-center">
					<a class="btn btn-outline-secondary" href="./settings">
						<i class="fa fa-cog"></i>
						[[pages:account/settings]]
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card">
			<div class="card-body">
				<p><strong>[[user:consent.right-of-access]]</strong></p>
				<p>[[user:consent.right-of-access-description]]</p>
				<p><strong>[[user:consent.right-to-rectification]]</strong></p>
				<p>[[user:consent.right-to-rectification-description]]</p>
				<p><strong>[[user:consent.right-to-erasure]]</strong></p>
				<p>[[user:consent.right-to-erasure-description]]</p>
				<p><strong>[[user:consent.right-to-data-portability]]</strong></p>
				<p>[[user:consent.right-to-data-portability-description]]</p>

				<div class="btn-group-vertical d-grid">
					<a data-action="export-profile" class="btn btn-outline-secondary">
						<i class="fa fa-download"></i> [[user:consent.export-profile]]
					</a>
					<a data-action="export-posts" class="btn btn-outline-secondary">
						<i class="fa fa-download"></i> [[user:consent.export-posts]]
					</a>
					<a data-action="export-uploads" class="btn btn-outline-secondary">
						<i class="fa fa-download"></i> [[user:consent.export-uploads]]
					</a>
				</div>
			</div>
		</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->