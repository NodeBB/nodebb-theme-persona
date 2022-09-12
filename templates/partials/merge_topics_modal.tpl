<div class="card merge-topic-card">
	<h5 class="card-header">[[topic:thread_tools.merge_topics]]</h5>
	<div class="card-body">
		<p>
			[[topic:merge_topics_instruction]]
		</p>
		<p>
			<div class="input-group">
				<input class="form-control topic-search-input" type="text">
				<span class="input-group-text"><i class="fa fa-search"></i></span>
			</div>
		</p>
		<div style="position: relative;">
			<div class="quick-search-container hidden">
				<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
				<div class="quick-search-results-container"></div>
			</div>
		</div>
		<p><strong>[[topic:merge-topic-list-title]]</strong></p>
		<ul class="topics-section">
			{{{each topics}}}
			<li><a href="{config.relative_path}/topic/{topics.tid}"><strong>{topics.title}</strong></a></li>
			{{{end}}}
		</ul>
		<p>
			<strong>[[topic:merge-options]]</strong>
		</p>
		<form>
			<p>
				<input class="merge-main-topic-radio" type="radio" name="merge-topic-option" checked="true"> [[topic:merge-select-main-topic]]
			</p>
			<p>
				<select class="form-control merge-main-topic-select">
					{{{each topics}}}
					<option value="{topics.tid}">{topics.title}</option>
					{{{end}}}
				</select>
			</p>
			<p>
				<input class="merge-new-title-radio" type="radio" name="merge-topic-option"> [[topic:merge-new-title-for-topic]]
			</p>
			<p>
				<input class="merge-new-title-input form-control" type="text">
			</p>
		</form>
	</div>
	<div class="card-footer">
		&nbsp;
		<div class="btn-group float-end">
			<button class="btn btn-link btn-sm" id="merge_topics_cancel">[[global:buttons.close]]</button>
			<button class="btn btn-primary btn-sm" id="merge_topics_confirm" disabled>[[topic:thread_tools.merge]]</button>
		</div>
	</div>
</div>