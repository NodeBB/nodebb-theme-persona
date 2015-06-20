<!-- BEGIN users -->
<li class="users-box registered-user" data-uid="{users.uid}">
	<a href="{config.relative_path}/user/{users.userslug}"><img src="{users.picture}" /></a>
	<br/>
	<div class="user-info">
		<span>
			<i component="user/status" class="fa fa-circle status {users.status}" title="[[global:{users.status}]]"></i>
			<a href="{config.relative_path}/user/{users.userslug}">{users.username}</a>
		</span>
		<br/>

		<!-- IF users:joindate -->
		<div title="joindate" class="joindate">
			<i class='fa fa-clock'></i>
			<span class='timeago' title="{users.joindateISO}"></span>
		</div>
		<!-- ENDIF users:joindate -->

		<!-- IF users:reputation -->
		<div title="reputation" class="reputation">
			<i class='fa fa-star'></i>
			<span class='formatted-number'>{users.reputation}</span>
		</div>
		<!-- ENDIF users:reputation -->

		<!-- IF users:postcount -->
		<div title="post count" class="post-count">
			<i class='fa fa-pencil'></i>
			<span class='formatted-number'>{users.postcount}</span>
		</div>
		<!-- ENDIF users:postcount -->
	</div>
</li>
<!-- END users -->