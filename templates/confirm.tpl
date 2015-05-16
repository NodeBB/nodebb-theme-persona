<!-- IF !error -->
<div class="alert alert-success">
	<strong>[[notifications:email-confirmed]]</strong>
	<p>[[notifications:email-confirmed-message]]</p>
<!-- ELSE -->
<div class="alert alert-danger">
	<strong>{error}</strong>
	<p>[[notifications:email-confirm-error-message]]</p>
<!-- ENDIF !error -->
	<p>
		<a href="{config.relative_path}/">[[notifications:back_to_home, {config.siteTitle}]]</a>
	</p>
</div>
