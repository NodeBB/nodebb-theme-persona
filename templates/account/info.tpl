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
				<ul class="list-group">
					{{{each usernames}}}
					<li class="list-group-item">
						{../value}
						<small class="float-end"><span class="timeago" title="{../timestampISO}"></span></small>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>

		<div class="card">
			<h5 class="card-header">
				[[user:info.email-history]]
			</h5>
			<div class="card-body">
				<ul class="list-group">
					{{{each emails}}}
					<li class="list-group-item">
						{../value}
						<small class="float-end"><span class="timeago" title="{../timestampISO}"></span></small>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.latest-flags]]
			</h5>
			<div class="card-body">
				<!-- IF history.flags.length -->
				<ul class="recent-flags list-unstyled">
					{{{each history.flags}}}
					<li>
						<p>
							{{{ if history.flags.targetPurged }}}
							<div>[[flags:target-purged]]</div>
							{{{ else }}}
							<a class="title" href="{config.relative_path}/post/{../pid}">{../title}</a><br />
							{{{ end }}}
							<span class="timestamp">[[flags:flagged-timeago-readable, {../timestampISO}, {../timestampReadable}]]</span>
						</p>
					</li>
					{{{end}}}
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
					{{{each history.bans}}}
					<li>
						<p>
							<a href="{config.relative_path}/user/{history.bans.user.userslug}">{buildAvatar(history.bans.user, "24px", true)}</a>
							<strong>
								<a href="<!-- IF history.bans.user.userslug -->{config.relative_path}/user/{history.bans.user.userslug}<!-- ELSE -->#<!-- ENDIF history.bans.user.userslug -->" itemprop="author" data-username="{history.bans.user.username}" data-uid="{history.bans.user.uid}">{history.bans.user.username}</a>
							</strong>
							<span class="timestamp timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
							<!-- IF ../until -->
							<span class="expiry">[[user:info.banned-until, {../untilReadable}]]</span><br />
							<!-- ELSE -->
							<span class="expiry">[[user:info.banned-permanently]]</span><br />
							<!-- ENDIF ../until -->
							<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {../reason}</span>
						</p>
					</li>
					{{{end}}}
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
					<li>
						<p>
							<a href="{config.relative_path}/user/{history.mutes.user.userslug}">{buildAvatar(history.mutes.user, "24px", true)}</a>
							<strong>
								<a href="<!-- IF history.mutes.user.userslug -->{config.relative_path}/user/{history.mutes.user.userslug}<!-- ELSE -->#<!-- ENDIF history.mutes.user.userslug -->" itemprop="author" data-username="{history.mutes.user.username}" data-uid="{history.mutes.user.uid}">{history.mutes.user.username}</a>
							</strong>
							<span class="timestamp timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
							{{{ if ../until }}}
							<span class="expiry">[[user:info.muted-until, {../untilReadable}]]</span><br />
							{{{ end }}}

							<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {../reason}</span>
						</p>
					</li>
					{{{end}}}
				</ul>
				{{{ else }}}
				<div class="alert alert-success">[[user:info.no-mute-history]]</div>
				{{{ end }}}
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
					{{{each moderationNotes}}}
					<hr/>

					<div class="clearfix">
						<div class="float-start">
							<a href="<!-- IF moderationNotes.user.userslug -->{config.relative_path}/user/{moderationNotes.user.userslug}<!-- ELSE -->#<!-- ENDIF moderationNotes.user.userslug -->">{buildAvatar(moderationNotes.user, "24px", true)}</a>
							<strong>
								<a href="<!-- IF moderationNotes.user.userslug -->{config.relative_path}/user/{moderationNotes.user.userslug}<!-- ELSE -->#<!-- ENDIF moderationNotes.user.userslug -->" itemprop="author" data-username="{moderationNotes.user.username}" data-uid="{moderationNotes.user.uid}">{moderationNotes.user.username}</a>
							</strong>

							<div class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
								<span class="timeago" title="{moderationNotes.timestampISO}"></span>
							</div>
							<br />

							<div class="content">
								{moderationNotes.note}
							</div>
						</div>
					</div>
					{{{end}}}
				</div>
				<!-- IMPORT partials/paginator.tpl -->
			</div>
		</div>
		<!-- ENDIF isAdminOrGlobalModerator -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->