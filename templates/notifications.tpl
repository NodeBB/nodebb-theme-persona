
<div class="notifications">
	<h2>[[notifications:title]]</h2>

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="notifications-list">
	<!-- BEGIN notifications -->
		<li data-nid="{notifications.nid}" class="{notifications.readClass}">
			<!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<a class="pull-left" href="{relative_path}/user/{notifications.user.userslug}"><img class="user-img" src="{notifications.image}" /></a>
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


