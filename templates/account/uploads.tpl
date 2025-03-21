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

<div class="row">
	<div class="col-12">
		<table class="table table-striped">
			<thead>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				{{{each uploads}}}
				<tr data-name="{uploads.name}">
					<td>
						<a href="{config.relative_path}{uploads.url}">{uploads.url}</a>
					</td>
					<td>
						<div class="btn-group ">
							<button class="btn btn-danger btn-sm" data-action="delete"><i class="fa fa-trash"></i></button>
						</div>
					</td>
				</tr>
				{{{end}}}
			</tbody>
		</table>

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->