<!-- IMPORT partials/account/header.tpl -->

<div class="profile row">
	<h1 class="fullname text-center fs-2 text-secondary fw-light">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h1>
	<div class="d-flex gap-2 justify-content-center mb-2" component="user/badges"></div>
	<h2 class="username text-center fs-5">@{username}</h2>
	{{{ if isAdminOrGlobalModeratorOrModerator }}}
		{{{ if banned }}}
		<div class="text-center">
		{{{ if banned_until }}}
		{{tx("user:info.banned-until", isoTimeToLocaleString(./banned_until_readable, config.userLang))}}
		{{{ else }}}
		{{tx("user:info.banned-permanently")}}
		{{{ end }}}
		</div>
		{{{ end }}}
		{{{ if muted }}}
		<div class="text-center">
		{{{ if mutedUntil }}}
		{{tx("user:info.muted-until", isoTimeToLocaleString(./muted_until_readable, config.userLang))}}
		{{{ else }}}
		{{tx("user:info.muted-permanently")}}
		{{{ end }}}
		</div>
		{{{ end }}}
	{{{ end }}}

	{{{ if selectedGroup.length }}}
	<div class="d-flex gap-1 flex-wrap justify-content-center mb-3">
	{{{each selectedGroup}}}
	<!-- IF selectedGroup.slug -->
	<!-- IMPORT partials/groups/badge.tpl -->
	<!-- ENDIF selectedGroup.slug -->
	{{{end}}}
	</div>
	{{{ end }}}

	<!-- IF aboutme -->
	<div component="aboutme" class="text-center aboutme text-secondary w-75 mx-auto text-center">{{aboutmeParsed}}</div>
	<!-- ENDIF aboutme -->

	<div class="account-stats fs-1 text-center mb-3">
		<!-- IF !reputation:disabled -->
		<div class="stat d-inline-block" style="min-width: 100px;">
			<div title="{reputation}">{humanReadableNumber(reputation)}</div>
			<div class="stat-label text-xs text-uppercase text-secondary">{{tx("global:reputation")}}</div>
		</div>
		<!-- ENDIF !reputation:disabled -->

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div title="{profileviews}">{humanReadableNumber(profileviews)}</div>
			<div class="stat-label text-xs text-uppercase text-secondary">{{tx("user:profile-views")}}</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.posts}" href="{config.relative_path}/user/{userslug}/posts">{humanReadableNumber(counts.posts)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">{{tx("global:posts")}}</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.followers}" href="{config.relative_path}/user/{userslug}/followers">{humanReadableNumber(counts.followers)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">{{tx("user:followers")}}</div>
		</div>

		<div class="stat d-inline-block" style="min-width: 100px;">
			<div><a title="{counts.following}" href="{config.relative_path}/user/{userslug}/following">{humanReadableNumber(counts.following)}</a></div>
			<div class="stat-label text-xs text-uppercase text-secondary">{{tx("user:following")}}</div>
		</div>
	</div>

	<div class="profile-meta text-xs text-uppercase d-flex gap-3 flex-wrap justify-content-center align-items-center">
		<div class="w-100 d-flex gap-3 justify-content-center">
			<div>
				<span class="stat-label">{{tx("user:joined")}}</span>
				<span class="timeago fw-bold" title="{joindateISO}"></span>
			</div>

			<div>
				<span class="stat-label">{{tx("user:lastonline")}}</span>
				<span class="timeago fw-bold" title="{lastonlineISO}"></span>
			</div>
		</div>

		{{{ if email }}}
		<div>
			<span class="stat-label">{{tx("user:email")}}</span>
			<strong><i class="fa fa-eye-slash {emailClass}" title="{{tx("user:email-hidden")}}"></i> {email}</strong>
		</div>
		{{{ end }}}

		{{{ if age }}}
		<div class="">
			<span class="stat-label">{{tx("user:age")}}</span>
			<span class="fw-bold">{age}</span>
		</div>
		{{{ end }}}

		{{{ each customUserFields }}}
		{{{ if ./value }}}
		<div class="d-flex gap-1 flex-nowrap align-items-center">
			<span class="stat-label">{./name}</span>
			{{{ if (./type == "input-link") }}}
			<a class="fw-bold" href="{./value}" rel="nofollow noreferrer">{./linkValue}</a>
			{{{ else }}}
			<span class="fw-bold d-flex flex-nowrap align-items-center">{./value}</span>
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
			<a component="account/unfollow" href="#" class="btn btn-outline-secondary{{{ if !isFollowing }}} hide{{{ end }}}">{{tx("user:unfollow")}}</a>
			<a component="account/follow" href="#" class="btn btn-primary{{{ if isFollowing }}} hide{{{ end }}}">{{tx("user:follow")}}</a>
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

<div class="row">
	{{{ if (bestPosts.length || latestPosts.length) }}}
	<div class="col-12">
		<ul class="nav nav-tabs mb-3 justify-content-center" role="tablist">
			{{{ if bestPosts.length }}}
			<li class="nav-item" role="presentation">
				<button
					class="nav-link active fw-semibold"
					id="best-posts-tab"
					data-bs-toggle="tab"
					data-bs-target="#best-posts-pane"
					type="button"
					role="tab"
					aria-controls="best-posts-pane"
					aria-selected="true"
				>
					{{tx("pages:account/best", txEscape(username))}}
				</button>
			</li>
			{{{ end }}}
			{{{ if latestPosts.length }}}
			<li class="nav-item" role="presentation">
				<button
					class="nav-link fw-semibold {{{ if !bestPosts.length }}}active{{{ end }}}"
					id="latest-posts-tab"
					data-bs-toggle="tab"
					data-bs-target="#latest-posts-pane"
					type="button"
					role="tab"
					aria-controls="latest-posts-pane"
					aria-selected="{{{ if !bestPosts.length }}}true{{{ else }}}false{{{ end }}}"
				>
					{{tx("pages:account/latest-posts", txEscape(username))}}
				</button>
			</li>
			{{{ end }}}
		</ul>

		<div class="tab-content">
			{{{ if bestPosts.length }}}
			<div
				class="tab-pane fade show active"
				id="best-posts-pane"
				role="tabpanel"
				aria-labelledby="best-posts-tab"
				tabindex="0"
			>
				<ul component="posts" class="posts-list list-unstyled">
				{{{each bestPosts}}}
				<!-- IMPORT partials/posts_list_item.tpl -->
				{{{end}}}
				</ul>
			</div>
			{{{ end }}}
			{{{ if latestPosts.length }}}
			<div
				class="tab-pane fade {{{ if !bestPosts.length }}}show active{{{ end }}}"
				id="latest-posts-pane"
				role="tabpanel"
				aria-labelledby="latest-posts-tab"
				tabindex="0"
			>
				<ul component="posts" class="posts-list list-unstyled">
				{{{each latestPosts}}}
				<!-- IMPORT partials/posts_list_item.tpl -->
				{{{end}}}
				</ul>
			</div>
			{{{ end }}}
		</div>
	</div>
	{{{ end }}}
</div>

<div id="user-action-alert" class="alert alert-success hide"></div>

<!-- IMPORT partials/account/footer.tpl -->