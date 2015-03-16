<div id="fork-thread-modal" class="hide" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4>[[topic:fork_topic]]</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="title">Title</label>
					<input id="fork-title" type="text" class="form-control" placeholder="Enter new thread title"><br/>
					<label>[[topic:fork_topic_instruction]]</label> <br/>
					<span id="fork-pids"></span>
				</div>
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="fork_thread_cancel">[[global:buttons.close]]</button>
				<button type="button" class="btn btn-primary" id="fork_thread_commit" disabled>[[topic:confirm_fork]]</button>
			</div>
		</div>
	</div>
</div>