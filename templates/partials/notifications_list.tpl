
<!-- IF !notifications.length -->
<li class="no-notifs"><a href="#">[[notifications:no_notifs]]</a></li>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<li class="{notifications.readClass}" data-nid="{notifications.nid}">
	<!-- IF notifications.image -->
	<!-- IF notifications.from -->
	<a href="{config.relative_path}/user/{notifications.user.userslug}"><img src="{notifications.image}" /></a>
	<!-- ENDIF notifications.from -->
	<!-- ELSE -->
	<a href="{config.relative_path}/user/{notifications.user.userslug}"><div class="user-icon" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div></a>
	<!-- ENDIF notifications.image -->

	<div class="pull-xs-right mark-read" aria-label="Mark Read"></div>
	<a href="{config.relative_path}{notifications.path}">
		<span class="pull-xs-right relTime">{notifications.timeago}</span>
		<span class="text">{notifications.bodyShort}</span>
	</a>
	<div class="clear"></div>
</li>
<!-- END notifications -->
