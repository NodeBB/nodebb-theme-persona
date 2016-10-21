<div class="modal" tabindex="-1" role="dialog" aria-labelledby="Flag post" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					[[topic:flag]]
					<a href="{config.relative_path}/post/{pid}">Post #{pid}</a> by
					<a href="{config.relative_path}/user/{userslug}">{username}</a>
				</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<button class="btn btn-default form-control flag-reason">[[topic:spam]]</button>
				</div>
				<div class="form-group">
					<button class="btn btn-default form-control flag-reason">[[topic:offensive]]</button>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="flag-reason-custom" placeholder="[[topic:custom-flag-reason]]"></textarea>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-primary" id="flag-post-commit" disabled>[[topic:flag]]</button>
			</div>
		</div>
	</div>
</div>