<div id="{alert_id}" role="alert" class="alert alert-dismissible alert-{type} fade show" component="toaster/toast">
	<!-- IF image -->
	<img src="{image}">
	<!-- ENDIF image -->

	<!-- IF title -->
	<strong>{title}</strong>
	<!-- ENDIF title -->

	<!-- IF message -->
	<p class="mb-0">{message}</p>
	<!-- ENDIF message -->

	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="close"></button>
</div>
