<div class="clearfix post-header">
	<div class="icon float-start">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			{buildAvatar(posts.user, "48px", true, "", "user/picture")}
			<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		</a>
	</div>

	<small class="d-flex">
		<div class="d-flex align-items-center gap-1 flex-wrap w-100">
			<strong class="text-nowrap">
				<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.displayname}</a>
			</strong>

			{{{ each posts.user.selectedGroups }}}
			{{{ if posts.user.selectedGroups.slug }}}
			<!-- IMPORT partials/groups/badge.tpl -->
			{{{ end }}}
			{{{ end }}}

			<!-- IF posts.user.banned -->
			<span class="badge bg-danger">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->

			<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
				<!-- IF posts.toPid -->
				<a component="post/parent" class="btn btn-sm btn-outline-secondary hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
				<!-- ENDIF posts.toPid -->

				<span>
					<!-- IF posts.user.custom_profile_info.length -->
					&#124;
					{{{each posts.user.custom_profile_info}}}
					{posts.user.custom_profile_info.content}
					{{{end}}}
					<!-- ENDIF posts.user.custom_profile_info.length -->
				</span>
			</span>
			<div class="d-flex align-items-center gap-1 flex-grow-1 justify-content-end">
				<span>
					<i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

					<span data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></span>

					<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
						<a class="permalink text-muted" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>
					</span>
				</span>
				<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>
			</div>
		</div>
	</small>
</div>

<br />

<div class="content" component="post/content" itemprop="text">
	{posts.content}
</div>

<div class="post-footer">
	{{{ if posts.user.signature }}}
	<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
	{{{ end }}}

	<div class="clearfix">
	{{{ if !hideReplies }}}
	<a component="post/reply-count" data-target-component="post/replies/container" href="#" class="threaded-replies user-select-none float-start text-muted {{{ if !posts.replies.count }}}hidden{{{ end }}}">
		<span component="post/reply-count/avatars" class="avatars {{{ if posts.replies.hasMore }}}hasMore{{{ end }}}">
			{{{each posts.replies.users}}}
			{buildAvatar(posts.replies.users, "16px", true, "")}
			{{{end}}}
		</span>

		<span class="replies-count" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
		<span class="replies-last hidden-xs">[[topic:last_reply_time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

		<i class="fa fa-fw fa-chevron-right" component="post/replies/open"></i>
		<i class="fa fa-fw fa-chevron-down hidden" component="post/replies/close"></i>
		<i class="fa fa-fw fa-spin fa-spinner hidden" component="post/replies/loading"></i>
	</a>
	{{{ end }}}

	<small class="float-end">
		<!-- IMPORT partials/topic/reactions.tpl -->
		<span class="post-tools">
			<a component="post/reply" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
			<a component="post/quote" href="#" class="user-select-none <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
		</span>

		<!-- IF !reputation:disabled -->
		<span class="votes">
			<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>

			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

			<!-- IF !downvote:disabled -->
			<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->
		</span>
		<!-- ENDIF !reputation:disabled -->

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>
	</div>
	<div component="post/replies/container"></div>
</div>