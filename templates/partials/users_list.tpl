<!-- BEGIN users -->
<li class="users-box registered-user" data-uid="{users.uid}">
	<a href="{relative_path}/user/{users.userslug}"><img src="{users.picture}" /></a>
	<br/>
	<div class="user-info">
		<span>
			<i component="user/status" class="fa fa-circle status {users.status}" title="[[global:{users.status}]]"></i>
			<a href="{relative_path}/user/{users.userslug}">{users.username}</a>
		</span>
		<br/>

		<!-- IF route_users:joindate -->
		<div title="joindate" class="joindate">
			<i class='fa fa-clock'></i>
			<span class='timeago' title="{users.joindateISO}"></span>
		</div>
		<!-- ENDIF route_users:joindate -->

		<!-- IF route_users:reputation -->
		<div title="reputation" class="reputation">
			<i class='fa fa-star'></i>
			<span class='formatted-number'>{users.reputation}</span>
		</div>
		<!-- ENDIF route_users:reputation -->

		<!-- IF route_users:postcount -->
		<div title="post count" class="post-count">
			<i class='fa fa-pencil'></i>
			<span class='formatted-number'>{users.postcount}</span>
		</div>
		<!-- ENDIF route_users:postcount -->
	</div>
</li>
<!-- END users -->