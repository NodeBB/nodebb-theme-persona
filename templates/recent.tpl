<div class="recent">

	<div class="clearfix">
		<div class="pull-left">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
		<div class="pull-right">
			<!-- IF loggedIn -->
			<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
	</div>

	<hr class="hidden-xs"/>

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/recent">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>