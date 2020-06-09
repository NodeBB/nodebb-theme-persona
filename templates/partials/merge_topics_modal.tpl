<div class="panel panel-primary merge-topic-card">
	<div class="panel-heading">
		<h3 class="panel-title">[[topic:thread_tools.merge_topics]]</h3>
	</div>
	<div class="panel-body">
		<p>
			[[topic:merge_topics_instruction]]
		</p>
		<p>
			<div class="input-group">
				<input class="form-control" type="text">
				<span class="input-group-addon">
					<i class="fa fa-search"></i>
				</span>
			</div>
		</p>
		<p><strong>[[topic:merge-topic-list-title]]</strong></p>
		<ul class="topics-section">
			{{{each topics}}}
			<li><a href="{config.relative_path}/topic/{topics.tid}">{topics.title}</a></li>
			{{{end}}}
		</ul>
		<p>
			<strong>[[topic:merge-options]]</strong>
		</p>
		<form>
			<p>
				<input type="radio" name="merge-topic-option" id="abbas" checked="true"> [[topic:merge-select-main-topic]]
			</p>
			<p>
				<select class="form-control main-topic-select">
					{{{each topics}}}
					<option value="{topics.tid}">{topics.title}</option>
					{{{end}}}
				</select>
			</p>
			<p>
				<input type="radio" name="merge-topic-option" id="allalal"> [[topic:merge-new-title-for-topic]]
			</p>
			<p>
				<input type="text" class="form-control">
			</p>
		</form>
	</div>
	<div class="panel-footer">
		&nbsp;
		<div class="btn-group pull-right">
			<button class="btn btn-link btn-xs" id="merge_topics_cancel">[[global:buttons.close]]</button>
			<button class="btn btn-primary btn-xs" id="merge_topics_confirm" disabled>[[topic:thread_tools.merge]]</button>
		</div>
	</div>
</div>