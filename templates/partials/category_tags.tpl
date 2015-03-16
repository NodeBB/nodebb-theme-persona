<!-- IF topics.tags.length -->
	<!-- BEGIN tags -->
		<a href="{relative_path}/tags/{topics.tags.value}"><span class="tag-item" data-tag="{topics.tags.value}" style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.value}</span><span class="tag-topic-count">{topics.tags.score}</span></a>
	<!-- END tags -->
<!-- ENDIF topics.tags.length -->