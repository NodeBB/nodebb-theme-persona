<!-- IMPORT partials/account/header.tpl -->
<h1 class="fs-4">{title}</h1>
<!-- IF privateUploads -->
<div class="alert alert-info text-center">[[uploads:private-uploads-info]]</div>
<!-- ELSE -->
<div class="alert alert-info text-center">[[uploads:public-uploads-info]]</div>
<!-- ENDIF privateUploads -->

<!-- IF !uploads.length -->
	<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
<!-- ENDIF !uploads.length -->

<div class="table-responsive">
	<table class="table table-striped w-100">
		<thead>
			<tr>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			{{{ each uploads }}}
			<tr data-name="{./name}">
				<td>
					<a class="text-break" href="{config.relative_path}{./url}">{./url}</a>
				</td>
				<td style="width: 1%; white-space: nowrap;">
					<button class="btn btn-danger btn-sm" data-action="delete" aria-label="[[aria:delete-upload-button]]"><i class="fa fa-trash"></i></button>
				</td>
			</tr>
			{{{ end }}}
		</tbody>
	</table>
</div>

<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->