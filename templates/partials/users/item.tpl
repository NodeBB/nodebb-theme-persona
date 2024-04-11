<li class="users-box registered-user text-center pb-3" data-uid="{users.uid}" style="width: 102px;">
	<a href="{config.relative_path}/user/{users.userslug}">{buildAvatar(users, "64px", true)}</a>

	<div class="user-info">
		<div class="text-nowrap text-truncate">
			<span>
				<i component="user/status" class="fa fa-circle status {users.status}" title="[[global:{users.status}]]"></i>
				<a  href="{config.relative_path}/user/{users.userslug}">{users.username}</a>
			</span>
		</div>
		<!-- IF section_online -->
		<div class="lastonline">
			<span class="timeago" title="{users.lastonlineISO}"></span>
		</div>
		<!-- ENDIF section_online -->

		<!-- IF section_joindate -->
		<div class="joindate">
			<span class="timeago" title="{users.joindateISO}"></span>
		</div>
		<!-- ENDIF section_joindate -->

		<!-- IF section_sort-reputation -->
		<div class="reputation">
			<i class="fa fa-star"></i>
			<span>{formattedNumber(users.reputation)}</span>
		</div>
		<!-- ENDIF section_sort-reputation -->

		<!-- IF section_sort-posts -->
		<div class="post-count">
			<i class="fa fa-pencil"></i>
			<span>{formattedNumber(users.postcount)}</span>
		</div>
		<!-- ENDIF section_sort-posts -->

		<!-- IF section_flagged -->
		<div class="flag-count">
			<i class="fa fa-flag"></i>
			<span><a href="{config.relative_path}/flags?targetUid={users.uid}">{users.flags}</a></span>
		</div>
		<!-- ENDIF section_flagged -->
	</div>
</li>