<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h1>[[pages:{template.name}, {username}]]</h1>

		<!-- IF !topics.length -->
		<div class="alert alert-warning">[[user:has_no_watched_topics]]</div>
		<!-- ENDIF !topics.length -->

		<div class="category">
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>