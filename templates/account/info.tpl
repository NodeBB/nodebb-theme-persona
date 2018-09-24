<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<!-- IF sessions.length -->
	<div class="row">
		<div class="col-xs-12 col-md-12">
			<h4>[[global:sessions]]</h4>
			<ul class="list-group" component="user/sessions">
				<!-- BEGIN sessions -->
				<li class="list-group-item" data-uuid="{../uuid}">
					<div class="pull-right">
						<!-- IF isSelfOrAdminOrGlobalModerator -->
						<!-- IF !../current -->
						<button class="btn btn-xs btn-default" type="button" data-action="revokeSession">Revoke Session</button>
						<!-- ENDIF !../current -->
						<!-- ENDIF isSelfOrAdminOrGlobalModerator -->
						{function.userAgentIcons}
						<i class="fa fa-circle text-<!-- IF ../current -->success<!-- ELSE -->muted<!-- ENDIF ../current -->"></i>
					</div>
					{../browser} {../version} on {../platform}<br />
					<small class="timeago text-muted" title="{../datetimeISO}"></small>
					<ul>
						<li><strong>[[global:ip_address]]</strong>: {../ip}</li>
					</ul>
				</li>
				<!-- END sessions -->
			</ul>
		</div>
	</div>
	<!-- ENDIF sessions.length -->

	<div class="row">
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentips]]</h3>
				</div>
				<div class="panel-body">
					<ul>
						<!-- BEGIN ips -->
						<li>@value</li>
						<!-- END ips -->
					</ul>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[user:info.username-history]]</h3>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<!-- BEGIN usernames -->
						<li class="list-group-item">
							{../value}
							<small class="pull-right"><span class="timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END usernames -->
					</ul>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[user:info.email-history]]</h3>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<!-- BEGIN emails -->
						<li class="list-group-item">
							{../value}
							<small class="pull-right"><span class="timeago" title="{../timestampISO}"></span></small>
						</li>
						<!-- END emails -->
					</ul>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[user:info.latest-flags]]</h3>
				</div>
				<div class="panel-body">
					<!-- IF history.flags.length -->
					<ul class="recent-flags">
						<!-- BEGIN history.flags -->
						<li>
							<p>
								<a class="title" href="{config.relative_path}/post/{../pid}">{../title}</a><br />
								<span class="timestamp">Flagged <span class="timeago" title="{../timestampISO}"></span> ({../timestampReadable})</span>
							</p>
						</li>
						<!-- END history.flags -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-success">[[user:info.no-flags]]</div>
					<!-- ENDIF history.flags.length -->
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">

						[[user:info.ban-history]]

						<!-- IF !banned -->
						<!-- IF !isSelf -->
						<button class="btn btn-xs pull-right btn-danger" component="account/ban">[[user:ban_account]]</button>
						<!-- ENDIF !isSelf -->
						<!-- ELSE -->
						<!-- IF !isSelf -->
						<button class="btn btn-xs pull-right btn-success" component="account/unban">[[user:unban_account]]</button>
						<!-- ENDIF !isSelf -->
						<!-- ENDIF !banned -->
					</h3>
				</div>
				<div class="panel-body">
					<!-- IF history.bans.length -->
					<ul class="ban-history">
						<!-- BEGIN history.bans -->
						<li>
							<p>
								<a href="{config.relative_path}/user/{history.bans.user.userslug}">
									<!-- IF history.bans.user.picture -->
									<img title="{history.bans.user.username}" class="avatar avatar-sm avatar-rounded" src="{history.bans.user.picture}" />
									<!-- ELSE -->
									<span title="{history.bans.user.username}" class="avatar avatar-sm avatar-rounded user-icon" style="background-color: {history.bans.user.icon:bgColor};">{history.bans.user.icon:text}</span>
									<!-- ENDIF history.bans.user.picture -->
								</a>
								<span class="timestamp timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
								<!-- IF ../until -->
								<span class="expiry">[[user:info.banned-until, {../untilReadable}]]</span><br />
								<!-- ELSE -->
								<span class="expiry">[[user:info.banned-permanently]]</span><br />
								<!-- ENDIF ../until -->
								<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {../reason}</span>
							</p>
						</li>
						<!-- END history.bans -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-success">[[user:info.no-ban-history]]</div>
					<!-- ENDIF history.bans.length -->
				</div>
			</div>
			<!-- IF isAdminOrGlobalModerator -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[user:info.moderation-note]]</h3>
				</div>
				<div class="panel-body">
					<textarea component="account/moderation-note" class="form-control"></textarea>
					<br/>
					<button class="btn btn-sm pull-right btn-success" component="account/save-moderation-note">[[user:info.moderation-note.add]]</button>
					<br/>
					<div component="account/moderation-note/list">
						<!-- BEGIN moderationNotes -->
						<hr/>

						<div class="clearfix">
							<div class="icon pull-left">
								<a href="<!-- IF moderationNotes.user.userslug -->{config.relative_path}/user/{moderationNotes.user.userslug}<!-- ELSE -->#<!-- ENDIF moderationNotes.user.userslug -->">
									<!-- IF moderationNotes.user.picture -->
									<img class="avatar avatar-sm" component="user/picture" data-uid="{moderationNotes.user.uid}" src="{moderationNotes.user.picture}" align="left" itemprop="image" />
									<!-- ELSE -->
									<div class="avatar avatar-sm" component="user/picture" data-uid="{moderationNotes.user.uid}" style="background-color: {moderationNotes.user.icon:bgColor};">{moderationNotes.user.icon:text}</div>
									<!-- ENDIF moderationNotes.user.picture -->
								</a>
							</div>

							<div class="pull-left">
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
						<!-- END moderationNotes -->
					</div>
					<!-- IMPORT partials/paginator.tpl -->
				</div>
			</div>
			<!-- ENDIF isAdminOrGlobalModerator -->
		</div>
	</div>
</div>