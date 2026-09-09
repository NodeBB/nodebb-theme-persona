{{{ if (!./index && widgets.mainpost-header.length) }}}
<div data-widget-area="mainpost-header">
	{{{ each widgets.mainpost-header }}}
	{widgets.mainpost-header.html}
	{{{ end }}}
</div>
{{{ end }}}

<div class="clearfix post-header">
	<div class="icon float-start">
		<a href="{{{ if posts.user.userslug }}}{config.relative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}">
			{{buildAvatar(posts.user, "48px", true, "", "user/picture")}}
			<!-- IMPORT partials/topic/user-status.tpl -->
		</a>
	</div>

	<small class="d-flex">
		<div class="d-flex align-items-center gap-1 flex-wrap w-100">
			<strong class="text-nowrap" itemprop="author" itemscope itemtype="https://schema.org/Person">
				<meta itemprop="name" content="{./user.username}">
				{{{ if ./user.userslug }}}<meta itemprop="url" content="{config.relative_path}/user/{./user.userslug}">{{{ end }}}
				<a href="{{{ if posts.user.userslug }}}{config.relative_path}/user/{posts.user.userslug}{{{ else }}}#{{{ end }}}" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{{renderShortcodeEmoji(txDisplayname(posts.user), posts.user.fullnameEmoji)}}</a>
			</strong>

			{{{ each posts.user.selectedGroups }}}
			{{{ if posts.user.selectedGroups.slug }}}
			<!-- IMPORT partials/groups/badge.tpl -->
			{{{ end }}}
			{{{ end }}}

			<!-- IF posts.user.banned -->
			<span class="badge bg-danger">{{tx("user:banned")}}</span>
			<!-- ENDIF posts.user.banned -->

			<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
				{{{ if posts.toPid }}}
				<a component="post/parent" class="btn btn-sm btn-ghost py-0 px-1 text-xs hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{encodeURIComponent(posts.toPid)}"><i class="fa fa-reply"></i> @{{{ if posts.parent.user.userslug }}}{posts.parent.user.username}{{{ else }}}{{tx("global:guest")}}{{{ end }}}</a>
				{{{ end }}}

				<span>
					<!-- IF posts.user.custom_profile_info.length -->
					&#124;
					{{{each posts.user.custom_profile_info}}}
					{{posts.user.custom_profile_info.content}}
					{{{end}}}
					<!-- ENDIF posts.user.custom_profile_info.length -->
				</span>
			</span>
			<div class="d-flex align-items-center gap-1 flex-grow-1 justify-content-end">
				<span>
					<i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

					<span data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">{{tx("global:last-edited-by", txEscape(posts.editor.username))}} <span class="timeago" title="{isoTimeToLocaleString(posts.editedISO, config.userLang)}"></span></span>

					<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
						<a class="permalink text-muted" href="{config.relative_path}/post/{encodeURIComponent(posts.pid)}"><span class="timeago" title="{posts.timestampISO}"></span></a>
					</span>
				</span>
				<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>
			</div>
		</div>
	</small>
</div>

<br />

<div class="content" component="post/content" itemprop="text">
	{{{ if posts.contentWarning }}}
	<details class="content-warning">
	<summary>{posts.contentWarning}</summary>
	{{{ if posts.txContent }}}{{tx(posts.content)}}{{{ else }}}{{posts.content}}{{{ end }}}
	</details>
	{{{ else }}}
	{{{ if posts.txContent }}}{{tx(posts.content)}}{{{ else }}}{{posts.content}}{{{ end }}}
	{{{ end }}}
</div>

<div class="post-footer">
	{{{ if posts.user.signature }}}
	<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{{posts.user.signature}}</div>
	{{{ end }}}

	<div class="clearfix">
	{{{ if !hideReplies }}}
	<a component="post/reply-count" data-target-component="post/replies/container" href="#" class="threaded-replies user-select-none float-start text-muted {{{ if (!./replies || shouldHideReplyContainer(@value)) }}}hidden{{{ end }}}">
		<span component="post/reply-count/avatars" class="avatars d-inline-flex gap-1 align-items-top hidden-xs {{{ if posts.replies.hasMore }}}hasMore{{{ end }}}">
			{{{each posts.replies.users}}}
			<span>{{buildAvatar(posts.replies.users, "16px", true, "")}}</span>
			{{{end}}}
			{{{ if posts.replies.hasMore}}}
			<span><i class="fa fa-ellipsis"></i></span>
			{{{ end }}}
		</span>

		<span class="replies-count small" component="post/reply-count/text" data-replies="{posts.replies.count}">{{tx(posts.replies.text)}}</span>
		<span class="replies-last hidden-xs small">{{tx("topic:last-reply-time")}} <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

		<i class="fa fa-fw fa-chevron-down" component="post/replies/open"></i>
	</a>
	{{{ end }}}

	<small class="d-flex flex-wrap justify-content-end align-items-center gap-1" component="post/actions">
		<!-- IMPORT partials/topic/reactions.tpl -->
		<div class="d-flex gap-1">
			<span class="post-tools">
				<a component="post/reply" href="#" class="btn btn-sm btn-link user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">{{tx("topic:reply")}}</a>
				<a component="post/quote" href="#" class="btn btn-sm btn-link user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">{{tx("topic:quote")}}</a>
			</span>

			{{{ if ./announces }}}
			<a component="post/announce-count" href="#" class="btn-ghost-sm" title="{{tx("topic:announcers")}}"><i class="fa fa-share-alt text-primary"></i> {./announces}</a>
			{{{ end }}}

			{{{ if !reputation:disabled }}}
			<span class="votes">
				<a component="post/upvote" href="#" class="btn btn-sm btn-link <!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
					<i class="fa fa-chevron-up"></i>
				</a>

				<span class="btn btn-sm btn-link" component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

				<!-- IF !downvote:disabled -->
				<a component="post/downvote" href="#" class="btn btn-sm btn-link <!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
					<i class="fa fa-chevron-down"></i>
				</a>
				<!-- ENDIF !downvote:disabled -->
			</span>
			{{{ end }}}

			<!-- IMPORT partials/topic/post-menu.tpl -->
			</div>
	</small>
	</div>
	<div component="post/replies/container"></div>
</div>
{{{ if (!./index && widgets.mainpost-footer.length) }}}
<div data-widget-area="mainpost-footer">
	{{{ each widgets.mainpost-footer }}}
	{widgets.mainpost-footer.html}
	{{{ end }}}
</div>
{{{ end }}}