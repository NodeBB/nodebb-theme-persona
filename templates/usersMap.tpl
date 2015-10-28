<div class="users">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<!-- IMPORT partials/users_list_menu.tpl -->

	<br />

	<ul id="users-container" class="users-container rooms">

		<!-- BEGIN rooms -->
		<!-- IF rooms.total -->
		<li>
			<a href="{config.relative_path}{rooms.link}"><!-- IF rooms.core -->[[users:{rooms.room}]]<!-- ELSE -->{rooms.room}<!-- ENDIF rooms.core --></a><br/>
			<!-- BEGIN rooms.users -->
				<a href="{config.relative_path}/user/{rooms.users.userslug}"><img class="user-img" src="{rooms.users.picture}" title="{rooms.users.username}" alt="{rooms.users.username}" /></a>
			<!-- END rooms.users -->
		</li>
		<!-- ENDIF rooms.total -->
		<!-- END rooms -->

	</ul>

</div>
