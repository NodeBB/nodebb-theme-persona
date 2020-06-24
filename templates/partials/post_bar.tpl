<div class="clearfix">
	<div class="tags pull-left">
		<!-- IMPORT partials/topic/tags.tpl -->
	</div>

	<!-- IMPORT partials/topic/browsing-users.tpl -->

	<div class="topic-main-buttons pull-right">
		<span class="loading-indicator btn pull-left hidden" done="0">
			<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</span>

		<!-- IMPORT partials/topic/stats.tpl -->

		<!-- IMPORT partials/topic/reply-button.tpl -->

		<!-- IF loggedIn -->
		<button component="topic/mark-unread" class="btn btn-default">
			<i class="fa fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[topic:mark_unread]]</span>
		</button>
		<!-- ENDIF loggedIn -->

		<!-- IMPORT partials/topic/watch.tpl -->

		<!-- IMPORT partials/topic/sort.tpl -->

		<div class="pull-right">&nbsp;
		<!-- IMPORT partials/thread_tools.tpl -->
		</div>
	</div>
</div>
<hr/>