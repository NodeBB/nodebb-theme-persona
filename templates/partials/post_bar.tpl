<div class="topic-main-buttons float-end d-inline-block">
	<span class="loading-indicator btn float-start hidden" done="0">
		<span class="hidden-xs">[[topic:loading-more-posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	{{{ if loggedIn }}}
	<button component="topic/mark-unread" class="btn btn-sm btn-ghost" title="[[topic:mark-unread]]">
		<i class="fa fa-fw fa-inbox text-secondary"></i>
	</button>
	{{{ end }}}

	<!-- IMPORT partials/topic/watch.tpl -->
	<!-- IMPORT partials/topic/sort.tpl -->
	{{{ if loggedIn }}}
	<button component="topic/crosspost" title="[[topic:crosspost-topic]]" class="btn btn-sm btn-ghost">
		<i class="fa fa-fw fa-square-arrow-up-right text-secondary"></i>
	</button>
	{{{ end }}}

	<div class="d-inline-block">
	<!-- IMPORT partials/topic/tools.tpl -->
	</div>
	<!-- IMPORT partials/topic/reply-button.tpl -->
</div>
