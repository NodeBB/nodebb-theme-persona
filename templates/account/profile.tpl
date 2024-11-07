<!-- IMPORT partials/account/header.tpl -->

<div class="profile row">
	<h1 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h1>
	<div class="d-flex gap-2 justify-content-center mb-2" component="user/badges"></div>
	<h2 class="username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h2>
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
	<br/>
	<!-- ENDIF selectedGroup.length -->

	<!-- IF aboutme -->
	<span component="aboutme" class="text-center aboutme">{aboutmeParsed}</span>
	<!-- ENDIF aboutme -->

	<div class="account-stats">
		<!-- IF !reputation:disabled -->
		<div class="stat">
			<div title="{reputation}">{humanReadableNumber(reputation)}</div>
			<span class="stat-label">[[global:reputation]]</span>
		</div>
		<!-- ENDIF !reputation:disabled -->

		<div class="stat">
			<div title="{profileviews}">{humanReadableNumber(profileviews)}</div>
			<span class="stat-label">[[user:profile-views]]</span>
		</div>

		<div class="stat">
			<div><a title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{humanReadableNumber(counts.posts)}</a></div>
			<span class="stat-label">[[global:posts]]</span>
		</div>

		<div class="stat">
			<div><a title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{humanReadableNumber(counts.followers)}</a></div>
			<span class="stat-label">[[user:followers]]</span>
		</div>

		<div class="stat">
			<div><a title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{humanReadableNumber(counts.following)}</a></div>
			<span class="stat-label">[[user:following]]</span>
		</div>
	</div>

	<div class="profile-meta d-flex gap-3 flex-wrap justify-content-center">
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

		{{{ if websiteName }}}
		<div>
			<span class="stat-label">[[user:website]]</span>
			<a href="{websiteLink}" class="fw-bold" rel="nofollow noreferrer me">{websiteName}</a>
		</div>
		{{{ end }}}

		{{{ if location }}}
		<div>
			<span class="stat-label">[[user:location]]</span>
			<span class="fw-bold">{location}</span>
		</div>
		{{{ end }}}

		{{{ if age }}}
		<div>
			<span class="stat-label">[[user:age]]</span>
			<span class="fw-bold">{age}</span>
		</div>
		{{{ end }}}

		{{{ each customUserFields }}}
		{{{ if ./value }}}
		<div>
			<span class="stat-label">{./name}</span>
			{{{ if (./type == "input-link") }}}
			<a class="fw-bold" href="{./value}" rel="nofollow noreferrer me">{./value}</a>
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
		<h1>[[pages:account/best, {username}]]</h1>

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
		<h1>[[pages:account/latest-posts, {username}]]</h1>
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