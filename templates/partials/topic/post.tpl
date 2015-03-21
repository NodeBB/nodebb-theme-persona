<div class="content clearfix">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<img src="{posts.user.picture}" align="left" itemprop="image" />
			<!-- IF posts.user.banned -->
			<span class="label label-danger">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->
		</a>
	</div>

	<h1 class="title pull-left">
		<div class="main-post">
			<p component="post/header" itemprop="name"><i class="fa fa-thumb-tack hide"></i> <i class="fa fa-lock hide"></i> {title}</p>
		</div>

		<!-- IF template.category -->
		<small>[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
		<!-- ELSE -->
		<small>[[global:posted_in_ago, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
		<!-- ENDIF template.category -->
	</h1>
</div>