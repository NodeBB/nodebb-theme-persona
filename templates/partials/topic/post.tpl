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
		<i class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		<strong>
			<a class="username-field" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>

		[[global:posted_ago, <span class="timeago" title="{posts.relativeTime}"></span>]]

		<!-- IF posts.editor.username -->
		<span>| [[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</span>
		<!-- ENDIF posts.editor.username -->
	</small>
</div>

<br />
<div class="content" component="post/content" itemprop="text">{posts.content}</div>

<hr />