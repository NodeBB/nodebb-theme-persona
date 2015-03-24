<div class="tag">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IF !topics.length -->
	<div class="alert alert-warning">
		<strong>[[tags:no_tag_topics]]</strong>
	</div>
	<!-- ENDIF !topics.length -->

	<div class="category">
		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
	</div>
</div>

<!-- IMPORT partials/variables/tag.tpl -->