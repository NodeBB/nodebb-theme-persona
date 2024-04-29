<!-- IMPORT partials/account/header.tpl -->

<!-- IF sessions.length -->
<div class="row mb-3">
	<div class="col-12 col-md-12">
		<h4>[[global:sessions]]</h4>
		<ul class="list-group" component="user/sessions">
			{{{each sessions}}}
			<li class="list-group-item" data-uuid="{../uuid}">
				<div class="float-end">
					<!-- IF isSelfOrAdminOrGlobalModerator -->
					<!-- IF !../current -->
					<button class="btn btn-sm btn-outline-secondary" type="button" data-action="revokeSession">Revoke Session</button>
					<!-- ENDIF !../current -->
					<!-- ENDIF isSelfOrAdminOrGlobalModerator -->
					{function.userAgentIcons}
					<i class="fa fa-circle text-<!-- IF ../current -->success<!-- ELSE -->muted<!-- ENDIF ../current -->"></i>
				</div>
				{../browser} {../version} on {../platform}<br />
				<small class="timeago text-muted" title="{../datetimeISO}"></small>
				<ul>
					<li><strong>[[global:ip-address]]</strong>: {../ip}</li>
				</ul>
			</li>
			{{{end}}}
		</ul>
	</div>
</div>
<!-- ENDIF sessions.length -->

<div class="row">
	<div class="col-sm-6">
		<div class="card mb-3">
			<h5 class="card-header">
				[[global:recentips]]
			</h5>
			<div class="card-body">
				<ul>
					{{{each ips}}}
					<li>{@value}</li>
					{{{end}}}
				</ul>
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.username-history]]
			</h5>
			<div class="card-body">
				<ul class="list-unstyled mb-0">
					{{{ each usernames }}}
					<li class="d-flex justify-content-between mb-1">
						<span class="text-sm">{./value}</span>

						<div>
							{{{ if ./byUid }}}
							<a class="lh-1" href="{{{ if ./byUser.userslug }}}{config.relative_path}/user/{./byUser.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./byUser, "18px", true)}</a>
							{{{ end }}}
							<span class="timeago text-sm lh-1" title="{./timestampISO}"></span>
						</div>
					</li>
					{{{ end }}}
				</ul>
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.email-history]]
			</h5>
			<div class="card-body">
				<ul class="list-unstyled mb-0">
					{{{ each emails }}}
					<li class="d-flex justify-content-between mb-1">
						<span class="text-sm">{./value}</span>
						<div>
							{{{ if ./byUid }}}
							<a class="lh-1" href="{{{ if ./byUser.userslug }}}{config.relative_path}/user/{./byUser.userslug}{{{ else }}}#{{{ end }}}">
							{buildAvatar(./byUser, "18px", true)}</a>
							{{{ end }}}
							<span class="timeago text-sm lh-1" title="{./timestampISO}"></span>
						</div>
					</li>
					{{{ end }}}
				</ul>
			</div>
		</div>
		<!-- IF isAdminOrGlobalModerator -->
		<div class="card">
			<h5 class="card-header">
				[[user:info.moderation-note]]
			</h5>
			<div class="card-body">
				<textarea component="account/moderation-note" class="form-control"></textarea>
				<br/>
				<button class="btn btn-sm float-end btn-success" component="account/save-moderation-note">[[user:info.moderation-note.add]]</button>
				<br/>
				<div component="account/moderation-note/list">
					{{{ each moderationNotes }}}
					<hr/>

					<div data-id="{./id}">
						<div class="mb-1">
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">{buildAvatar(./user, "24px", true)}</a>

							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" class="fw-bold" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>

							<span class="timeago" title="{./timestampISO}"></span>
						</div>

						<div component="account/moderation-note/content-area" class="d-flex flex-column">
							<div class="content">
								{./note}
							</div>
							<button component="account/moderation-note/edit" class="btn btn-sm btn-link align-self-end">[[topic:edit]]</button>
						</div>

						<div component="account/moderation-note/edit-area" class="d-flex flex-column gap-2">
							<textarea class="form-control w-100 overflow-hidden">{./rawNote}</textarea>
							<div class="align-self-end">
								<button component="account/moderation-note/cancel-edit" class="btn btn-sm btn-link text-danger align-self-end">[[global:cancel]]</button>
								<button component="account/moderation-note/save-edit" class="btn btn-sm btn-primary align-self-end">[[global:save]]</button>
							</div>
						</div>
					</div>
					{{{ end }}}
				</div>
				<!-- IMPORT partials/paginator.tpl -->
			</div>
		</div>
		<!-- ENDIF isAdminOrGlobalModerator -->
	</div>
	<div class="col-sm-6">
		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.latest-flags]]
			</h5>
			<div class="card-body">
				<!-- IF history.flags.length -->
				<ul class="recent-flags list-unstyled">
					{{{ each history.flags }}}
					<li class="mb-4 border-bottom">
						<div class="mb-1 d-flex align-items-center justify-content-between">
							<div>
								{{{ if (./type == "user")}}}
								<span class="badge text-bg-info">[[user:info.profile]]</span>
								{{{ else }}}
								<span class="badge text-bg-info">[[user:info.post]]</span>
								{{{ end }}}
								<span class="timestamp timeago" title="{./timestampISO}"></span>
							</div>

							<a href="{config.relative_path}/flags/{./flagId}" class="badge badge border border-gray-300 text-body">[[user:info.view-flag]]</a>
						</div>

						{{{ if (./type == "post") }}}
						<p class="mb-1">
							{{{ if history.flags.targetPurged }}}
							<div>[[flags:target-purged]]</div>
							{{{ else }}}
							<a class="title" href="{config.relative_path}/post/{./pid}">{./title}</a>
							{{{ end }}}
						</p>
						{{{ end }}}

						<div class="d-flex gap-2 align-items-center mb-3">
							<span class="text-sm">[[user:info.reported-by]]</span>
							<div class="d-flex text-nowrap">
								{{{ each ./reports }}}
								<a style="width: 18px; z-index: 3;" class="text-decoration-none" href="{config.relative_path}/user/{./reporter.userslug}">{buildAvatar(./reporter, "24px", true)}</a>
								{{{ end }}}
							</div>
						</div>
					</li>
					{{{ end }}}
				</ul>
				<!-- ELSE -->
				<div class="alert alert-success">[[user:info.no-flags]]</div>
				<!-- ENDIF history.flags.length -->
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.ban-history]]

				<!-- IF !banned -->
				<!-- IF !isSelf -->
				<button class="btn btn-sm float-end btn-danger" component="account/ban">[[user:ban-account]]</button>
				<!-- ENDIF !isSelf -->
				<!-- ELSE -->
				<!-- IF !isSelf -->
				<button class="btn btn-sm float-end btn-success" component="account/unban">[[user:unban-account]]</button>
				<!-- ENDIF !isSelf -->
				<!-- ENDIF !banned -->
			</h5>
			<div class="card-body">
				<!-- IF history.bans.length -->
				<ul class="ban-history list-unstyled">
					{{{ each history.bans }}}
					<li class="mb-4 border-bottom">
						<div class="mb-1 d-flex align-items-center justify-content-between">
							<div>
								<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "24px", true)}</a>
								<strong>
									<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>
								</strong>
								<span class="timestamp timeago" title="{./timestampISO}"></span>
							</div>
							{{{ if (./type != "unban") }}}
							<span class="badge text-bg-danger">[[user:banned]]</span>
							{{{ else }}}
							<span class="badge text-bg-success">[[user:unbanned]]</span>
							{{{ end }}}
						</div>
						<p class="mb-1">
							<span class="reason">[[user:info.banned-reason-label]]: <strong>{./reason}</strong></span>
						</p>
						<p class="">
							{{{ if ./until }}}
							<span class="expiry">[[user:info.banned-until, {isoTimeToLocaleString(./untilISO, config.userLang)}]]</span>
							{{{ else }}}
							{{{ if (./type != "unban") }}}
							<span class="expiry">[[user:info.banned-permanently]]</span>
							{{{ end }}}
							{{{ end }}}
						</p>
					</li>
					{{{ end }}}
				</ul>
				<!-- ELSE -->
				<div class="alert alert-success">[[user:info.no-ban-history]]</div>
				<!-- ENDIF history.bans.length -->
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.mute-history]]

				{{{ if !muted }}}
				{{{ if !isSelf }}}
				<button class="btn btn-sm float-end btn-danger" component="account/mute">[[user:mute-account]]</button>
				{{{ end }}}
				{{{ else }}}
				{{{ if !isSelf }}}
				<button class="btn btn-sm float-end btn-success" component="account/unmute">[[user:unmute-account]]</button>
				{{{ end }}}
				{{{ end }}}
			</h5>
			<div class="card-body">
				{{{ if history.mutes.length }}}
				<ul class="ban-history list-unstyled">
					{{{ each history.mutes }}}
					<li class="mb-4 border-bottom">
						<div class="mb-1 d-flex align-items-center justify-content-between">
							<div>
								<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "24px", true)}</a>
								<strong>
									<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>
								</strong>
								<span class="timestamp timeago" title="{./timestampISO}"></span>
							</div>
							{{{ if (./type != "unmute") }}}
							<span class="badge text-bg-danger">[[user:muted]]</span>
							{{{ else }}}
							<span class="badge text-bg-success">[[user:unmuted]]</span>
							{{{ end }}}
						</div>
						<p class="mb-1">
							<span class="reason">[[user:info.banned-reason-label]]: <strong>{./reason}</strong></span>
						</p>
						<p class="">
							{{{ if ./until }}}
							<span class="expiry">[[user:info.muted-until, {isoTimeToLocaleString(./untilISO, config.userLang)}]]</span>
							{{{ end }}}
						</p>
					</li>
					{{{ end }}}
				</ul>
				{{{ else }}}
				<div class="alert alert-success">[[user:info.no-mute-history]]</div>
				{{{ end }}}
			</div>
		</div>

	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->