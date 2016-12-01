<div class="row">
	<div class="col-sm-4 col-md-3">
		<!-- IMPORT partials/flags/quick-filters.tpl -->
	</div>
	<div class="col-sm-6 col-md-9">
		<h2>
			<div class="pull-right">
				<a class="btn btn-link" href="{config.relative_path}/flags"><i class="fa fa-chevron-left"></i> [[flags:back]]</a>
			</div>
			{target_readable}
			<small><span class="timeago" title="{datetimeISO}"></span></small>
		</h2>

		<hr />

		<div class="media">
			<div class="media-left">
				<a href="{config.relative_path}/user/{target.user.userslug}">
					<!-- IF target.user.picture -->
					<img class="media-object avatar avatar-lg" src="{target.user.picture}" alt="{target.user.username}" />
					<!-- ELSE -->
					<div class="media-object avatar avatar-lg" style="background-color: {target.user.icon:bgColor}">{target.user.icon:text}</div>
					<!-- ENDIF target.user.picture -->
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.user.userslug}">{target.user.username}</a></h4>
				{target.content}
			</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-sm-6">
				<form role="form" id="attributes">
					<div class="form-group">
						<label for="state">[[flags:state]]</label>
						<select class="form-control" id="state" name="state" disabled>
							<option value="open">[[flags:state-open]]</option>
							<option value="wip">[[flags:state-wip]]</option>
							<option value="resolved">[[flags:state-resolved]]</option>
							<option value="rejected">[[flags:state-rejected]]</option>
						</select>
					</div>
					<div class="form-group">
						<label for="assignee">[[flags:assignee]]</label>
						<select class="form-control" id="assignee" name="assignee" disabled>
							<option value="">[[flags:no-assignee]]</option>
							<!-- BEGIN assignees -->
							<option value="{../userslug}">{../username}</option>
							<!-- END assignees -->
						</select>
					</div>
					<button type="button" class="btn btn-block btn-primary" data-action="update">[[flags:update]]</button>
				</form>

				<hr />

				<form role="form">
					<div class="form-group">
						<label for="note">[[flags:notes]]</label>
						<textarea id="note" class="form-control"></textarea>
						<button type="button" class="btn btn-block btn-primary" data-action="appendNote">[[flags:add-note]]</button>
					</div>
				</form>

				<div component="flag/notes">
					<!-- BEGIN notes -->
					<div class="media">
						<div class="media-left">
							<a href="{config.relative_path}/user/{../user.userslug}">
								<!-- IF ../user.picture -->
								<img class="media-object avatar avatar-md" src="{../user.picture}" alt="{../user.username}" />
								<!-- ELSE -->
								<div class="media-object avatar avatar-md" style="background-color: {../user.icon:bgColor}">{../user.icon:text}</div>
								<!-- ENDIF ../user.picture -->
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>
								<small><span class="timeago" title="{../datetimeISO}"></span></small>
							</h4>
							{../content}
						</div>
					</div>
					<!-- END notes -->
				</div>
			</div>
			<div class="col-sm-6">
				<label>[[flags:history]]</label>
				<div component="flag/history">
					<!-- BEGIN history -->
					<div class="media">
						<div class="media-left">
							<a href="{config.relative_path}/user/{../user.userslug}">
								<!-- IF ../user.picture -->
								<img class="media-object avatar avatar-md" src="{../user.picture}" alt="{../user.username}" />
								<!-- ELSE -->
								<div class="media-object avatar avatar-md" style="background-color: {../user.icon:bgColor}">{../user.icon:text}</div>
								<!-- ENDIF ../user.picture -->
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>
								<small><span class="timeago" title="{../datetimeISO}"></span></small>
							</h4>
							[[flags:updated]]:
							<!-- BEGIN fields --><span class="label label-primary">@value</span>&nbsp;<!-- END fields -->
						</div>
					</div>
					<!-- END history -->
				</div>
			</div>
		</div>
	</div>
</div>
