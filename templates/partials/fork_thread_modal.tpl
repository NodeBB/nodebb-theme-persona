<div class="card tool-modal shadow">
	<h5 class="card-header">
		[[topic:fork_topic]]
	</h5>
	<div class="card-body">
		<div class="mb-3">
			<label class="form-label" for="fork-title">[[topic:title]]</label>
			<input id="fork-title" type="text" class="form-control" placeholder="[[topic:enter-new-topic-title]]">
		</div>
		<p class="form-text">
			[[topic:fork_topic_instruction]]
		</p>
		<strong><span id="fork-pids"></span></strong>
	</div>
	<div class="card-footer">
		<div class="btn-group float-end">
			<button class="btn btn-link btn-sm" id="fork_thread_cancel">[[global:buttons.close]]</button>
			<button class="btn btn-primary btn-sm" id="fork_thread_commit" disabled>[[topic:fork_topic]] <i class="fa fa-arrow-circle-right"></i></button>
		</div>
	</div>
</div>