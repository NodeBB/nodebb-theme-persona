
<!-- IMPORT partials/account_menu.tpl -->

<div>
	<!-- IF !topics.length -->
		<div class="alert alert-warning">[[user:has_no_topics]]</div>
	<!-- ENDIF !topics.length -->

	<div class="category row">
		<div class="col-md-12 user-topics" data-nextstart="{nextStart}">
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />