<div class="list-group media">
	<button type="button" class="list-group-item" data-type="default">
		<div class="media-left">
			<div class="user-icon media-object"></div>
		</div>
		<div class="media-body">
			<h4 class="media-heading">[[user:default_picture]]</h4>
		</div>
	</button>
	<!-- BEGIN pictures -->
	<button type="button" class="list-group-item" data-type="{pictures.type}">
		<div class="media-left">
			<img class="media-object" src="{pictures.url}" title="{pictures.text}" />
		</div>
		<div class="media-body">
			<h4 class="media-heading">{pictures.text}</h4>
		</div>
	</button>
	<!-- END pictures -->
</div>

<div class="btn-group btn-group-justified" role="group">
	<!-- IF allowProfileImageUploads -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="upload">
			<span class="hidden-xs">
				[[user:upload_new_picture]]
			</span>
			<span class="visible-xs-inline">
				<i class="fa fa-plus"></i>
				<i class="fa fa-upload"></i>
			</span>
		</button>
	</div>
	<!-- ENDIF allowProfileImageUploads -->
	<!-- IF config.hasImageUploadPlugin -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="upload-url">
			<span class="hidden-xs">
				[[user:upload_new_picture_from_url]]
			</span>
			<span class="visible-xs-inline">
				<i class="fa fa-plus"></i>
				<i class="fa fa-link"></i>
			</span>
		</button>
	</div>
	<!-- ENDIF config.hasImageUploadPlugin -->
	<!-- IF uploaded -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="remove-uploaded">
			<span class="hidden-xs">
				[[user:remove_uploaded_picture]]
			</span>
			<span class="visible-xs-inline">
				<i class="fa fa-picture-o"></i>
				<i class="fa fa-long-arrow-right"></i>
				<i class="fa fa-trash-o"></i>
			</span>
		</button>
	</div>
	<!-- ENDIF uploaded -->
</div>
