<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="groups list">
	<div class="d-flex justify-content-between align-items-center gap-3 flex-wrap">
		<div>
			{{{ if allowGroupCreation }}}
			<button class="btn btn-primary" data-action="new"><i class="fa fa-plus"></i> [[groups:new-group]]</button>
			{{{ end }}}
		</div>

		<div class="d-flex gap-3 align-items-center">
			<select class="form-select" id="search-sort">
				<option value="alpha">[[groups:details.group-name]]</option>
				<option value="count">[[groups:details.member-count]]</option>
				<option value="date">[[groups:details.creation-date]]</option>
			</select>

			<div class="input-group">
				<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="" id="search-text">
				<button id="search-button" class="btn btn-primary">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</div>

	<hr />

	<div component="groups/container" class="row" id="groups-list">
		{{{ if groups.length }}}
		<!-- IMPORT partials/groups/list.tpl -->
		{{{ else }}}
		<div class="col-12">
			<div class="alert alert-warning">
			[[groups:no-groups-found]]
			</div>
		</div>
		{{{ end }}}
	</div>

	<!-- IMPORT partials/paginator.tpl -->
</div>
