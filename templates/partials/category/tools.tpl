<!-- IF showTopicTools -->
<div class="btn-group thread-tools bottom-sheet">
	<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:thread-tools.title]]</span>
		<span class="visible-xs-inline"><i class="fa fa-fw fa-gear"></i></span>
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li>
			<a component="topic/mark-unread-for-all" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-inbox"></i> [[topic:thread-tools.markAsUnreadForAll]]
			</a>
		</li>
		<li>
			<a component="topic/pin" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread-tools.pin]]
			</a>
		</li>
		<li>
			<a component="topic/unpin" href="#" class="hidden dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-thumb-tack fa-rotate-90"></i> [[topic:thread-tools.unpin]]
			</a>
		</li>

		<li>
			<a component="topic/lock" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-lock"></i> [[topic:thread-tools.lock]]
			</a>
		</li>
		<li>
			<a component="topic/unlock" href="#" class="hidden dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-unlock"></i> [[topic:thread-tools.unlock]]
			</a>
		</li>

		<li class="dropdown-divider"></li>

		<li>
			<a component="topic/move" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-arrows"></i> [[topic:thread-tools.move]]
			</a>
		</li>
		{{{if template.category}}}
		<li>
			<a component="topic/move-all" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-arrows"></i> [[topic:thread-tools.move-all]]
			</a>
		</li>
		{{{end}}}
		<li>
			<a component="topic/merge" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-code-fork"></i> [[topic:thread-tools.merge]]
			</a>
		</li>

		<li>
			<a component="topic/tag" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-tag"></i> [[topic:thread-tools.tag]]
			</a>
		</li>

		<li class="dropdown-divider"></li>

		<li>
			<a component="topic/delete" href="#" class="dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-trash-o"></i> [[topic:thread-tools.delete]]
			</a>
		</li>
		<li>
			<a component="topic/restore" href="#" class="hidden dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-history"></i> [[topic:thread-tools.restore]]
			</a>
		</li>
		<li>
			<a component="topic/purge" href="#" class="hidden dropdown-item" role="menuitem">
				<i class="fa fa-fw fa-eraser"></i> [[topic:thread-tools.purge]]
			</a>
		</li>

		{{{each thread_tools}}}
		<li>
			<a href="#" class="dropdown-item {thread_tools.class}" role="menuitem"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a>
		</li>
		{{{end}}}
	</ul>
</div>
<!-- ENDIF showTopicTools -->