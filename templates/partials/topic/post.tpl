<div class="clearfix">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<img src="{posts.user.picture}" align="left" itemprop="image" />
			<!-- IF posts.user.banned -->
			<span class="label label-danger">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->
		</a>
	</div>

	<small class="pull-left">
		<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		<strong>
			<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>

		<!-- IMPORT partials/topic/badge.tpl -->

		<div class="visible-xs-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
			[[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]

			<span class="post-tools">
				<a component="post/reply" class="no-select <!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
				<a component="post/quote" class="no-select <!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
			</span>
		</div>

		<div class="votes">
			<!-- IF !reputation:disabled -->
			<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>
			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
			<!-- IF !downvote:disabled -->
			<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->
			<!-- ENDIF !reputation:disabled -->
		</div>

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>
</div>

<br />
<div class="content" component="post/content" itemprop="text">
	{posts.content}
</div>


<small component="post/editor" class="pull-right <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->">[[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</small>


<hr />