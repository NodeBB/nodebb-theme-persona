<div class="clearfix post-header">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			{buildAvatar(posts.user, "sm2x", true, "", "user/picture")}
			<i data-component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		</a>
	</div>

	<small class="pull-left">
		<strong>
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>

		<!-- IMPORT partials/post/user-groups.tpl -->

		<!-- IF posts.user.banned -->
		<span class="label label-danger">[[user:banned]]</span>
		<!-- ENDIF posts.user.banned -->

		<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
			<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>

			<i data-component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

			<!-- IMPORT partials/post/editor.tpl -->

			<!-- IF posts.toPid -->
			<a data-component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> @<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
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
		<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>

	</small>
</div>

<br />

<div class="content" data-component="post/content" itemprop="text">
	{posts.content}
</div>

<div class="clearfix post-footer">
	<!-- IF posts.user.signature -->
	<div data-component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
	<!-- ENDIF posts.user.signature -->

	<small class="pull-right">
		<span class="post-tools">
			<a data-component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
			<a data-component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
		</span>

		<!-- IF !reputation:disabled -->
		<span class="votes">
			<a data-component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>

			<span data-component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

			<!-- IF !downvote:disabled -->
			<a data-component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->
		</span>
		<!-- ENDIF !reputation:disabled -->

		<!-- IMPORT partials/post/tools.tpl -->
	</small>

	<!-- IF !hideReplies -->
	<a data-component="post/reply-count" href="#" class="threaded-replies no-select <!-- IF !posts.replies.count -->hidden<!-- ENDIF !posts.replies.count -->">
		<span data-component="post/reply-count/avatars" class="avatars <!-- IF posts.replies.hasMore -->hasMore<!-- ENDIF posts.replies.hasMore -->">
			{{{each posts.replies.users}}}
			{buildAvatar(posts.replies.users, "xs", true, "")}
			{{{end}}}
		</span>

		<span class="replies-count" data-component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
		<span class="replies-last hidden-xs">[[topic:last-reply-time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

		<i class="fa fa-fw fa-chevron-right" data-component="post/replies/open"></i>
		<i class="fa fa-fw fa-chevron-down hidden" data-component="post/replies/close"></i>
		<i class="fa fa-fw fa-spin fa-spinner hidden" data-component="post/replies/loading"></i>
	</a>
	<!-- ENDIF !hideReplies -->
</div>

<hr />
