<div id="{alert_id}" class="toast bg-{type}" data-component="toaster/toast" role="alert" aria-live="assertive" aria-atomic="true" {{{if timeout}}}data-delay="{timeout}"{{{else}}}data-autohide="false"{{{end}}}>
	<div class="toast-header">
		<!-- IF image -->
		<img src="{image}" class="rounded mr-2">
		<!-- ENDIF image -->
		<strong class="mr-auto">{title}</strong>
		<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="toast-body">
		<p>{message}</p>
	</div>
</div>
