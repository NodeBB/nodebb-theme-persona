<hr />

<div class="inline-block">
	<span class="tags">
	<!-- BEGIN tags -->
	<a href="{relative_path}/tags/{tags.value}"><span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span><span class="tag-topic-count">{tags.score}</span></a>
	<!-- END tags -->
	</span>

	<!-- IF tags.length -->
	<span>|</span>
	<!-- ENDIF tags.length -->

	
	<span class="browsing-users hidden">
		<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
		<small class="hidden">
			<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
		</small>
		<span>[[category:browsing]]</span>
	</span>
</div>

<div class="topic-main-buttons pull-right">
	<span class="loading-indicator btn" done="0" style="display:none;">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	<div class="stats">
		<span class="topic-post-count human-readable-number" title="{postcount}">{postcount}</span><br />
		<small>[[global:views]]</small>
	</div>
	<div class="stats">
		<span class="human-readable-number" title="{viewcount}">{viewcount}</span><br />
		<small>[[global:posts]]</small>
	</div>

	<!-- IF privileges.topics:reply -->
	<a component="topic/reply" class="btn btn-primary post_reply">[[topic:reply]]</a>
	<!-- ELSE -->
		<!-- IF !loggedIn -->
		<a href="/login?next=topic/{slug}" class="btn btn-primary">[[topic:guest-login-reply]]</a>
		<!-- ENDIF !loggedIn -->
	<!-- ENDIF privileges.topics:reply -->

	<!-- IMPORT partials/thread_sort.tpl -->

	<!-- IMPORT partials/thread_tools.tpl -->
</div>
<div style="clear:both;"></div>

<hr />