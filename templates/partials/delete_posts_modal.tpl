<div id="delete-posts-modal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4>[[topic:thread_tools.delete-posts]]</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>[[topic:delete_posts_instruction]]</label> <br/>
					<span id="pids"></span>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="delete_posts_cancel">[[global:buttons.close]]</button>
				<button type="button" class="btn btn-primary" id="delete_posts_confirm" disabled>[[topic:delete]]</button>
				<button type="button" class="btn btn-danger" id="purge_posts_confirm" disabled>[[topic:purge]]</button>
			</div>
		</div>
	</div>
</div>