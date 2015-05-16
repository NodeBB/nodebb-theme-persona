
<div class="notifications">
	<div class="dropdown pull-right visible-xs-block">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
			<i class="fa fa-eye"></i>
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
			<li role="presentation"><a role="menuitem" tabindex="-1" href="#" data-ajaxify="false" component="notifications/mark_all">[[notifications:mark_all_read]]</a></li>
		</ul>
	</div>
	<h2>[[notifications:title]]</h2>

	<hr />

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="notifications-list">
	<!-- BEGIN notifications -->
		<li data-nid="{notifications.nid}" class="{notifications.readClass}" component="notifications/item">
			<!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<a class="pull-left" href="{config.relative_path}/user/{notifications.user.userslug}"><img class="user-img" src="{notifications.image}" /></a>
			<!-- ENDIF notifications.from -->
			<!-- ELSE -->
			<img class="pull-left" src="{notifications.image}" />
			<!-- ENDIF notifications.image -->

			<p>
				<a href="{notifications.path}">{notifications.bodyShort}</a>
			</p>
			<p class="timestamp">
				<span class="timeago" title="{notifications.datetimeISO}"></span>
			</p>
		</li>
	<!-- END notifications -->
	</ul>
</div>


