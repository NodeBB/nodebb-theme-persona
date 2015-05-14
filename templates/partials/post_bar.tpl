<span class="tags">
	<!-- BEGIN tags -->
	<a href="{config.relative_path}/tags/{tags.value}">
	<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span>
	<span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
	<!-- END tags -->
</span>

<div class="topic-main-buttons pull-right">
	<span class="loading-indicator btn pull-left" done="0" style="display:none;">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	<div class="stats">
		<span component="topic/post-count" class="human-readable-number" title="{postcount}">{postcount}</span><br />
		<small>[[global:posts]]</small>
	</div>
	<div class="stats">
		<span class="human-readable-number" title="{viewcount}">{viewcount}</span><br />
		<small>[[global:views]]</small>
	</div>


	<!-- IMPORT partials/topic/reply-button.tpl -->

	<!-- IMPORT partials/thread_tools.tpl -->
</div>
<div style="clear:both;"></div>

<hr />