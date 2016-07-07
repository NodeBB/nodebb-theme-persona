<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

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
								<a class="title" href="{config.relative_path}/post/{../value}">{../title}</a><br />
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
					<h3 class="panel-title">[[user:info.ban-history]]</h3>
				</div>
				<div class="panel-body">
					<!-- IF history.bans.length -->
					<ul class="ban-history">
						<!-- BEGIN history.bans -->
						<li>
							<p>
								<span class="timestamp timeago" title="{../timestampISO}"></span> &mdash; {../timestampReadable}<br />
								<!-- IF ../until -->
								<span class="expiry">[[user:info.banned-until, {../untilReadable}]]</span>
								<!-- ELSE -->
								<span class="expiry">[[user:info.banned-permanently]]</span>
								<!-- ENDIF ../until -->
							</p>
						</li>
						<!-- END history.bans -->
					</ul>
					<!-- ELSE -->
					<div class="alert alert-success">[[user:info.no-ban-history]]</div>
					<!-- ENDIF history.bans.length -->
				</div>
			</div>
		</div>
	</div>
</div>