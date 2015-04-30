<div class="users">
	<ul class="nav nav-pills">
		<li class=''><a href='{relative_path}/users/online'>[[global:online]]</a></li>
		<li class=''><a href='{relative_path}/users/latest'>[[users:latest_users]]</a></li>
		<li class=''><a href='{relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
		<li class=''><a href='{relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>
		<!-- IF loggedIn -->
		<li class=''><a href='{relative_path}/users/search'>[[users:search]]</a></li>
		<!-- ENDIF loggedIn -->
	</ul>

	<br />

	<div class="search {search_display} well">
		<div class="input-group">
			<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
			<span class="input-group-addon">
				<span id="user-notfound-notify"><i class="fa fa-search"></i></span>
			</span>
		</div>
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<img src="https://secure.gravatar.com/avatar/" />
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<div class="text-center {loadmore_display}">
		<button id="load-more-users-btn" class="btn btn-primary">[[users:load_more]]</button>
	</div>
</div>
