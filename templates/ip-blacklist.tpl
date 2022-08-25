<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row ip-blacklist">
	<div class="col-lg-12">
		<p class="lead">
			[[ip-blacklist:lead]]
		</p>
		<p>
			[[ip-blacklist:description]]
		</p>

		<div class="row">
			<div class="col-sm-6">
				<div class="card mb-3">
					<div class="card-header">[[ip-blacklist:active-rules]]</div>
					<div class="card-body">
						<textarea id="blacklist-rules">{rules}</textarea><br />
						<button type="button" class="btn btn-warning" data-action="test">
							<i class="fa fa-bomb"></i> [[ip-blacklist:validate]]
						</button>
						<button type="button" class="btn btn-primary" data-action="apply">
							<i class="fa fa-save"></i> [[ip-blacklist:apply]]
						</button>
					</div>
				</div>
				<div class="card">
					<div class="card-header">[[ip-blacklist:hints]]</div>
					<div class="card-body">
						<p>
							[[ip-blacklist:hint-1]]
						</p>
						<p>
							[[ip-blacklist:hint-2]]
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="card mb-3">
					<div class="card-body">
						<div><canvas id="blacklist:hourly" height="250"></canvas></div>
					</div>
					<div class="card-footer"><small>[[ip-blacklist:analytics.blacklist-hourly]]</small></div>
				</div>

				<div class="card">
					<div class="card-body">
						<div><canvas id="blacklist:daily" height="250"></canvas></div>
					</div>
					<div class="card-footer"><small>[[ip-blacklist:analytics.blacklist-daily]]</small></div>
				</div>
			</div>
		</div>
	</div>

</div>