<!-- IMPORT partials/account/header.tpl -->

<div class="profile row">
	<h1 class="fullname text-center fs-2 text-secondary fw-light">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h1>
	<div class="d-flex gap-2 justify-content-center mb-2" component="user/badges"></div>
	<h2 class="username text-center fs-5"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h2>
	<!-- IF isAdminOrGlobalModeratorOrModerator -->
	<!-- IF banned -->
	<div class="text-center">
	<!-- IF banned_until -->
	[[user:info.banned-until, {banned_until_readable}]]
	<!-- ELSE -->
	[[user:info.banned-permanently]]
	<!-- ENDIF banned_until -->
	</div>
	<!-- ENDIF banned -->
	<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->

	<!-- IF selectedGroup.length -->
	<div class="text-center">
	{{{each selectedGroup}}}
	<!-- IF selectedGroup.slug -->
	<!-- IMPORT partials/groups/badge.tpl -->
	<!-- ENDIF selectedGroup.slug -->
	{{{end}}}
	</div>
	<!-- ENDIF selectedGroup.length -->

	<!-- IF aboutme -->
	<div component="aboutme" class="text-center aboutme text-secondary w-75 mx-auto text-center">{aboutmeParsed}</div>
	<!-- ENDIF aboutme -->

	<div class="account-stats fs-1 text-center mb-3">
		<!-- IF !reputation:disabled -->
		<div class="stat d-inline-block" style="min-width: 100px;">
			<div title="{reputation}">{humanReadableNumber(reputation)}</div>
			<div class="stat-label text-xs text-uppercase text-secondary">[[global:reputation]]</div>
		</div>
		<!-- ENDIF !reputation:disabled -->

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div title="{profileviews}">{humanReadableNumber(profileviews)}</div>
			<div class="stat-label text-xs text-uppercase text-secondary">[[user:profile-views]]</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{humanReadableNumber(counts.posts)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">[[global:posts]]</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{humanReadableNumber(counts.followers)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">[[user:followers]]</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{humanReadableNumber(counts.following)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">[[user:following]]</div>
		</div>
	</div>

	<div class="profile-meta text-xs text-uppercase d-flex gap-3 flex-wrap justify-content-center">
		<div class="w-100 d-flex gap-3 justify-content-center">
			<div>
				<span class="stat-label">[[user:joined]]</span>
				<span class="timeago fw-bold" title="{joindateISO}"></span>
			</div>

			<div>
				<span class="stat-label">[[user:lastonline]]</span>
				<span class="timeago fw-bold" title="{lastonlineISO}"></span>
			</div>
		</div>

		{{{ if email }}}
		<div>
			<span class="stat-label">[[user:email]]</span>
			<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email-hidden]]"></i> {email}</strong>
		</div>
		{{{ end }}}

		{{{ if age }}}
		<div class="">
			<span class="stat-label text-secondary ">[[user:age]]</span>
			<span class="fw-bold">{age}</span>
		</div>
		{{{ end }}}

		{{{ each customUserFields }}}
		{{{ if ./value }}}
		<div>
			<span class="stat-label">{./name}</span>
			{{{ if (./type == "input-link") }}}
			<a class="fw-bold" href="{./value}" rel="nofollow noreferrer">{./linkValue}</a>
			{{{ else }}}
			<span class="fw-bold">{./value}</span>
			{{{ end }}}
		</div>
		{{{ end }}}
		{{{ end }}}
	</div>
</div>


<hr />

<div class="row">
	<div class="col-12 account-block hidden">
		<div class="account-picture-block text-center">
			<span>
				<span class="account-username"> {username}</span>
			</span>

			<!-- IF !isSelf -->
			<a component="account/unfollow" href="#" class="btn btn-outline-secondary{{{ if !isFollowing }}} hide{{{ end }}}">[[user:unfollow]]</a>
			<a component="account/follow" href="#" class="btn btn-primary{{{ if isFollowing }}} hide{{{ end }}}">[[user:follow]]</a>
			<!-- ENDIF !isSelf -->
		</div>
	</div>
</div>

<!-- IF groups.length -->
<div class="row">
	<div class="col-12 hidden">
		{{{each groups}}}
		<a href="{config.relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
		{{{end}}}
	</div>
</div>
<!-- ENDIF groups.length -->

<!-- IF ips.length -->
<div class="row">
	<div class="col-12 hidden">
		<div class="card">
			<h5 class="card-header">
				[[global:recentips]]
			</h5>
			<div class="card-body">
			{{{each ips}}}
				<div>{ips}</div>
			{{{end}}}
			</div>
		</div>
	</div>
</div>
<!-- ENDIF ips.length -->

<div class="row">
	{{{ if bestPosts.length }}}
	<div class="col-lg-12 col-12">
		<h1 class="fs-3">[[pages:account/best, {username}]]</h1>

		<div class="col-12">
			<ul component="posts" class="posts-list list-unstyled">
			{{{each bestPosts}}}
			<!-- IMPORT partials/posts_list_item.tpl -->
			{{{end}}}
			</ul>
		</div>
	</div>
	{{{ end }}}
	{{{ if latestPosts.length}}}
	<div class="col-lg-12 col-12">
		<h1 class="fs-3">[[pages:account/latest-posts, {username}]]</h1>
		<div class="col-12">
			<ul component="posts" class="posts-list list-unstyled">
			{{{each latestPosts}}}
			<!-- IMPORT partials/posts_list_item.tpl -->
			{{{end}}}
			</ul>
		</div>
	</div>
	{{{ end }}}
</div>

<div id="user-action-alert" class="alert alert-success hide"></div>

<!-- IMPORT partials/account/footer.tpl -->