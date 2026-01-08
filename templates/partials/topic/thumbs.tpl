{{{ each thumbs }}}
<a class="d-inline-block" href="{./url}">
	<img class="rounded-1 bg-light" style="width:auto; max-width: 4rem; height: 3.33rem;object-fit: contain;" src="{./url}" />
</a>
{{{ end }}}{{{ if greaterthan(thumbs.length, "4") }}}
<button component="topic/thumb/list/expand" class="btn btn-light fw-semibold" style="width:auto; max-width: 5.33rem; height: 3.33rem; object-fit: contain;">+{increment(thumbs.length, "-3")}</button>
{{{ end }}}