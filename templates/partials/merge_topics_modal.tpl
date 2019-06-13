<div class="panel panel-primary merge-topic-card">
	<div class="panel-heading">
		<h3 class="panel-title">[[topic:thread_tools.merge_topics]]</h3>
	</div>
	<div class="panel-body">
		<p>
			[[topic:merge_topics_instruction]]<br />
			<div class="topics-section">
				{{{each topics}}}
				<!-- IF @index -->
				<i class="fa fa-chevron-up"></i><br/>
				<!-- ENDIF @index -->
				<span>{topics.title}</span><br/>
				{{{end}}}
			</div>
		</p>
	</div>
	<div class="panel-footer">
		&nbsp;
		<div class="btn-group pull-right">
			<button class="btn btn-link btn-xs" id="merge_topics_cancel">[[global:buttons.close]]</button>
			<button class="btn btn-primary btn-xs" id="merge_topics_confirm" disabled>[[topic:thread_tools.merge]]</button>
		</div>
	</div>
</div>