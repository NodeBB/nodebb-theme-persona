<div id="move_thread_modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="Move Topic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3>[[topic:move_topic]]</h3>
			</div>
			<div class="modal-body">
				<label for="select-cid">[[topic:thread_tools.select_category]]</label>
				<select class="form-control" name="select-cid" id="select-cid">
					<option>[[topic:thread_tools.select_category]]</option>
					<!-- BEGIN categories -->
					<option value="{categories.cid}" data-name="{categories.name}" data-icon="{categories.icon}">{categories.text} <!-- IF categories.disabled -->([[global:disabled]])<!-- ENDIF categories.disabled --></option>
					<!-- END categories -->
				</select>

				<div id="move-confirm" class="hide">
					<hr />
					<div class="alert alert-info">[[topic:topic_will_be_moved_to]] <strong><span id="confirm-category-name"></span></strong></div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="move_thread_cancel">[[global:buttons.close]]</button>
				<button type="button" class="btn btn-primary" id="move_thread_commit" disabled>[[topic:confirm_move]]</button>
			</div>
		</div>
	</div>
</div>