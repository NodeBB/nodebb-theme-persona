<!-- IMPORT partials/account/header.tpl -->
<h1 class="fs-4">{{tx(title)}}</h1>
<!-- IF privateUploads -->
<div class="alert alert-info text-center">{{tx("uploads:private-uploads-info")}}</div>
<!-- ELSE -->
<div class="alert alert-info text-center">{{tx("uploads:public-uploads-info")}}</div>
<!-- ENDIF privateUploads -->

<!-- IF !uploads.length -->
	<div class="alert alert-warning text-center">{{tx("uploads:no-uploads-found")}}</div>
<!-- ENDIF !uploads.length -->

<div class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-4 mb-4">
	{{{ each uploads }}}
	<div class="" data-name="{./name}">
		<div class="card h-100 border-0">
			<div class="card-body p-1 d-flex flex-column justify-content-between">
				<div class="mb-2 text-center d-flex flex-column justify-content-start gap-2 flex-grow-1">
					<a class="d-flex align-items-center p-1 rounded-3 bg-light border justify-content-center text-sm" href="{config.relative_path}{./url}" target="_blank" style="width: 100%; height: auto; aspect-ratio: 1;">
						{{{ if ./isImage}}}
						<img src="{config.relative_path}{./url}" class="rounded img-fluid" alt="{./name}" style="width: 100%; height: auto; aspect-ratio:1; object-fit: cover;">
						{{{ else }}}
						<div class="d-flex align-items-center justify-content-center" style="width: 100%; height: auto; aspect-ratio:1; object-fit: cover;">
							<i class="fa-regular fa-file-lines fa-4x mb-2 text-secondary" ></i>
						</div>
						{{{ end }}}
					</a>
					<a class="text-xs text-break text-secondary text-center" target="_blank" href="{config.relative_path}{./url}">{./filename}</a>
				</div>
				<div class="d-flex flex-column gap-1 align-items-center">
					<button class="btn btn-ghost btn-sm" data-action="delete" aria-label="{{tx("aria:delete-upload-button")}}"><i class="fa fa-trash text-danger"></i> {{tx("uploads:delete-upload")}}</button>
				</div>
			</div>
		</div>
	</div>
	{{{ end }}}
</div>

<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->