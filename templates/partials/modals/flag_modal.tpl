<div class="modal" tabindex="-1" role="dialog" aria-labelledby="Flag post" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					[[flags:modal-title]]
				</h4>
			</div>
			<div class="modal-body">
				<p class="lead">
					[[flags:modal-body, {type}, {id}]]
				</p>
				<div class="form-group">
					<textarea class="form-control" id="flag-reason-custom" placeholder="[[flags:modal-reason-custom]]"></textarea>
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<button class="btn btn-default flag-reason">[[flags:modal-reason-spam]]</button>
					</div>
					<div class="btn-group">
						<button class="btn btn-default flag-reason">[[flags:modal-reason-offensive]]</button>
					</div>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="flag-post-commit" disabled>[[flags:modal-submit]]</button>
			</div>
		</div>
	</div>
</div>