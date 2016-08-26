
<div class="notifications">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="dropdown pull-xs-right hidden-md-up">
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
			<i class="fa fa-eye"></i>
		</button>
		<ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
			<li class="dropdown-item" role="presentation"><a class="nav-link" role="menuitem" tabindex="-1" href="#" data-ajaxify="false" component="notifications/mark_all">[[notifications:mark_all_read]]</a></li>
		</ul>
	</div>

	<hr />

	<div class="alert alert-info <!-- IF notifications.length -->hidden-xs-up<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="notifications-list" data-nextstart="{nextStart}">
	<!-- BEGIN notifications -->
		<li data-nid="{notifications.nid}" class="{notifications.readClass}" component="notifications/item">
			<!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<a class="pull-xs-left" href="{config.relative_path}/user/{notifications.user.userslug}"><img class="user-img" src="{notifications.image}" /></a>
			<!-- ENDIF notifications.from -->
			<!-- ELSE -->
			<a class="pull-xs-left" href="{config.relative_path}/user/{notifications.user.userslug}"><div class="pull-xs-left user-icon user-img" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div></a>
			<!-- ENDIF notifications.image -->

			<p>
				<a component="notifications/item/link" href="{config.relative_path}{notifications.path}">{notifications.bodyShort}</a>
			</p>
			<p class="timestamp">
				<span class="timeago" title="{notifications.datetimeISO}"></span>
			</p>
		</li>
	<!-- END notifications -->
	</ul>
</div>