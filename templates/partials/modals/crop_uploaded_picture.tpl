	<div id="crop-upload-picture-modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="crop-upload-picture" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="upload-picture-url">[[user:crop_picture]]</h3>
				</div>
				<div class="modal-body">
					<div id="upload-progress-box" class="progress hide">
						<div id="upload-progress-bar" class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0">
						</div>
					</div>
					
					<img id="cropped-image" src="{url}" style="max-width: 100%;">
 				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
					<button class="btn btn-primary crop-btn">[[user:upload_cropped_picture]]</button>
				</div>
			</div>
		</div>
	</div>