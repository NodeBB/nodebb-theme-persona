<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between align-items-center mb-3">
	<div class="d-flex gap-1">
		<h3 class="fw-semibold fs-4">{{tx("pages:account/shares", txEscape(username))}}</h3>
	</div>
</div>

{{{ if !topics.length }}}
<div class="alert alert-warning text-center">{{tx(noItemsFoundKey)}}</div>
{{{ end }}}

<div class="category">
	<!-- IMPORT partials/topics_list.tpl -->
	{{{ if config.usePagination }}}
	<!-- IMPORT partials/paginator.tpl -->
	{{{ end }}}
</div>

<!-- IMPORT partials/account/footer.tpl -->