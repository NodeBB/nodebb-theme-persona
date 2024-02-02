<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-12">
		<h2 class="h4">
			{target_readable}
			<small><span class="text-muted timeago" title="{datetimeISO}"></span></small>
		</h2>

		<hr />

		<!-- IF type_bool.post -->
		<div class="d-flex">
			<div class="flex-shrink-0">
				<a href="{config.relative_path}/user/{target.user.userslug}">{buildAvatar(target.user, "64px", true, "media-object")}</a>
			</div>
			<div class="flex-grow-1 ms-3">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.user.userslug}">{target.user.username}</a></h4>
				{target.content}
			</div>
		</div>
		<!-- ENDIF type_bool.post -->

		<!-- IF type_bool.user -->
		<div class="d-flex">
			<div class="flex-shrink-0">
				<a href="{config.relative_path}/user/{target.userslug}">{buildAvatar(target, "64px", true, "media-object")}</a>
			</div>
			<div class="flex-grow-1 ms-3">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.userslug}">{target.username}</a></h4>
				<p class="lead">
					<a href="{config.relative_path}/uid/{target.uid}">[[flags:user-view]]</a> |
					<a href="{config.relative_path}/uid/{target.uid}/edit">[[flags:user-edit]]</a>
				</p>
			</div>
		</div>
		<!-- ENDIF type_bool.user -->

		<!-- IF type_bool.empty -->
		<div class="alert alert-warning" role="alert">[[flags:target-purged]]</div>
		<!-- ENDIF type_bool.empty -->

		<hr />

		<div class="row">
			<div class="col-sm-6">
				<form role="form" id="attributes">
					<div class="mb-3">
						<h2 class="h4">[[flags:reports]]</h2>
						<ul class="list-group" component="flag/reports">
							{{{ each reports }}}
							<li class="list-group-item">
								<a href="{config.relative_path}/user/{./reporter.userslug}">{buildAvatar(./reporter, "24px", true)}</a>
								&ndash; <span class="timeago" title="{./timestampISO}"></span>
								<blockquote><em>{./value}</em></blockquote>
							</li>
							{{{ end }}}
						</ul>
					</div>
					<div class="mb-3">
						<h2 class="h4" for="state">[[flags:state]]</h2>
						<select class="form-select" id="state" name="state" disabled>
							<option value="open">[[flags:state-open]]</option>
							<option value="wip">[[flags:state-wip]]</option>
							<option value="resolved">[[flags:state-resolved]]</option>
							<option value="rejected">[[flags:state-rejected]]</option>
						</select>
					</div>
					<div class="mb-3">
						<h2 class="h4" for="assignee">[[flags:assignee]]</h2>
						<select class="form-control" id="assignee" name="assignee" disabled>
							<option value="">[[flags:no-assignee]]</option>
							{{{each assignees}}}
							<option value="{../uid}">{../username}</option>
							{{{end}}}
						</select>
					</div>
					<div class="d-grid">
						<button type="button" class="btn btn-primary" data-action="update">[[flags:update]]</button>
					</div>
				</form>

				<hr />

				<form role="form">
					<div class="mb-3">
						<div class="d-flex align-items-center">
							<h2 class="h4 me-auto mb-0" for="note">[[flags:notes]]</h2>
							<button type="button" class="btn btn-primary" data-action="addEditNote">[[flags:add-note]]</button>
						</div>
					</div>
				</form>

				<div component="flag/notes">
					<!-- IF !notes.length -->
					<div class="alert alert-success text-center">[[flags:no-notes]]</div>
					<!-- ENDIF !notes.length -->
					{{{each notes}}}
					<div class="d-flex mb-3" component="flag/note" data-datetime="{./datetime}" data-index="{@index}">
						<div class="flex-shrink-0">
							<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(notes.user, "32px", true, "media-object")}</a>
						</div>
						<div class="flex-grow-1 mx-3">
							<h2 class="h5">
								<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>
								<small><span class="timeago" title="{../datetimeISO}"></span></small>
							</h4>
							{../content}
						</div>
						<div class="flex-shrink-0">
							<a href="#" class="btn btn-sm btn-link" data-action="addEditNote"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-sm btn-link" data-action="delete-note"><i class="fa fa-trash text-danger"></i></a>
						</div>
					</div>
					{{{end}}}
				</div>
			</div>
			<div class="col-sm-6">
				<h2 class="h4">[[flags:quick-actions]]</h2>

				<div class="d-grid gap-1">
					<a class="btn btn-light" href="{config.relative_path}/{type_path}/{targetId}">
						<i class="fa fa-external-link"></i>
						[[flags:go-to-target]]
					</a>

					<a class="btn btn-light" href="#" data-action="assign">
						<i class="fa fa-id-card-o"></i>
						[[flags:assign-to-me]]
					</a>

					{{{ if type_bool.post }}}
					{{{ if !target.deleted}}}
					<a class="btn btn-outline-danger" href="#" data-action="delete-post"><i class="fa fa-trash"></i> [[flags:delete-post]]</a>
					{{{ else }}}
					<a class="btn btn-danger" href="#" data-action="purge-post"><i class="fa fa-trash"></i> [[flags:purge-post]]</a>
					<a class="btn btn-outline-success" href="#" data-action="restore-post"><i class="fa fa-reply"></i><i class="fa fa-trash"></i> [[flags:restore-post]]</a>
					{{{ end }}}
					{{{ end }}}

					{{{ if target.uid }}}
					<div class="btn-group" data-uid="{target.uid}">
						<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fa fa-street-view"></i>
							[[flags:flagged-user]]
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a class="dropdown-item" href="{config.relative_path}/uid/{target.uid}" role="menuitem">[[flags:view-profile]]</a></li>
							{{{ if !config.disableChat }}}
								<li><a class="dropdown-item" href="#" data-action="chat" role="menuitem">[[flags:start-new-chat]]</a></li>
							{{{ end }}}
							<li class="dropdown-divider"></li>
							{{{ if privileges.ban }}}
							<li class="{{{ if target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="ban" role="menuitem">[[user:ban-account]]</a></li>
							<li class="{{{ if !target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unban" role="menuitem">[[user:unban-account]]</a></li>
							{{{ end }}}
							{{{ if privileges.mute}}}
							<li class="{{{ if target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="mute" role="menuitem">[[user:mute-account]]</a></li>
							<li class="{{{ if !target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unmute" role="menuitem">[[user:unmute-account]]</a></li>
							{{{ end }}}
							{{{ if privileges.admin:users }}}
							<li><a class="dropdown-item" href="#" data-action="delete-account" role="menuitem">[[user:delete-account-as-admin]]</a></li>
							<li><a class="dropdown-item" href="#" data-action="delete-content" role="menuitem">[[user:delete-content]]</a></li>
							<li><a class="dropdown-item" href="#" data-action="delete-all" role="menuitem">[[user:delete-all]]</a></li>
							{{{ end }}}
						</ul>
					</div>
					{{{ end }}}
				</div>

				<hr />

				<h2 class="h4">[[flags:history]]</h2>
				<div component="flag/history">
					<!-- IF !history.length -->
					<div class="alert alert-success text-center">[[flags:no-history]]</div>
					<!-- ENDIF !history.length -->
					{{{each history}}}
					<div class="d-flex">
						<div class="flex-shrink-0">
							<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(history.user, "32px", true, "media-object")}</a>
						</div>
						<div class="flex-grow-1 ms-3">
							<h4 class="media-heading">
								<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>
								<small><span class="timeago" title="{../datetimeISO}"></span></small>
							</h4>
							<ul>
								{{{each ./fields}}}
								<li>
									<span class="badge bg-primary">[[flags:{@key}]]</span><!-- IF @value --> &rarr; <span class="badge bg-light text-dark">{@value}</span><!-- ENDIF @value -->
								</li>
								{{{end}}}
								{{{ each ./meta }}}
								<li>
									<span class="badge bg-{{./labelClass}}">{{./key}}</span>{{{ if ./value }}} &rarr; <span class="badge bg-light text-dark">{{ ./value }}</span>{{{ end }}}
								</li>
								{{{ end }}}
							</ul>
						</div>
					</div>
					{{{end}}}
				</div>
			</div>
		</div>
	</div>
</div>
