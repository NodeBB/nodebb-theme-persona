<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="tags">
	{{{ if displayTagSearch }}}
	{{{ if tags.length }}}
	<div class="row justify-content-end mb-3">
		<div class="col-lg-3">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="[[global:search]]" id="tag-search">
				<button class="btn btn-primary" type="button">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ if !tags.length }}}
	<div class="alert alert-warning">[[tags:no-tags]]</div>
	{{{ end }}}

	<div class="category row">
		<div class="col-md-12 clearfix tag-list" data-nextstart="{nextStart}">
			<!-- IMPORT partials/tags_list.tpl -->
		</div>
	</div>
</div>
