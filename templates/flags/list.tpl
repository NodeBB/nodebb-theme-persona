<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-sm-4 col-md-3">
		<!-- IMPORT partials/flags/filters.tpl -->
	</div>
	<div class="col-sm-8 col-md-9">
		<div class="text-center">
			<div class="panel panel-default">
				<div class="panel-body">
					<div><canvas id="flags:daily" height="250"></canvas></div>
					<p>

					</p>
				</div>
				<div class="panel-footer"><small>[[flags:graph-label]]</small></div>
			</div>
		</div>

		<!-- IF hasFilter -->
		<div class="alert alert-warning">
			<p class="pull-right">
				<a href="{config.relative_path}/flags?reset=1">[[flags:filter-reset]]</a>
			</p>
			[[flags:filter-active]]
		</div>
		<!-- ENDIF hasFilter -->
		<table class="table table-striped table-hover" component="flags/list">
			<thead>
				<tr>
					<th>[[flags:state]]</th>
					<th></th>
					<th><span class="hidden-xs">[[flags:reporter]] </span><i class="fa fa-user-plus"></i></th>
					<th><span class="hidden-xs">[[flags:reported-at]] </span><i class="fa fa-clock-o"></i></th>
				</tr>
			</thead>
			<tbody>
				<!-- IF !flags.length -->
				<tr>
					<td colspan="4">
						<div class="alert alert-success text-center">
							[[flags:no-flags]]
						</div>
					</td>
				</tr>
				<!-- ENDIF !flags.length -->
				{{{each flags}}}
				<tr data-flag-id="{../flagId}">
					<td><span class="label label-{../labelClass}">[[flags:state-{../state}]]</span></td>
					<td>
						<a href="{config.relative_path}/flags/{../flagId}">
							<strong>{../target_readable}</strong> &mdash; <span component="flags/list/description">{../description}</span>
						</a>
					</td>
					<td>
						{buildAvatar(../reporter, "sm")}
						{../reporter.username}
					</td>
					<td><span class="timeago" title="{../datetimeISO}"></span></td>
				</tr>
				{{{end}}}
			</tbody>
		</table>

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>
