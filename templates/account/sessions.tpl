<!-- IMPORT partials/account/header.tpl -->

<!-- IF sessions.length -->
<div class="row">
	<div class="col-12 col-md-12">
		<p class="lead">[[user:sessions.description]]</p>
		<hr />
		<ul class="list-group" component="user/sessions">
			<!-- IMPORT partials/account/session-list.tpl -->
		</ul>
	</div>
</div>
<!-- ENDIF sessions.length -->

<!-- IMPORT partials/account/footer.tpl -->