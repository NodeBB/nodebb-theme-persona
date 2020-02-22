{{{each tags}}}
<h3 class="pull-left tag-container">
	<a href="{config.relative_path}/tags/{tags.valueEscaped}" data-value="{tags.valueEscaped}"><span class="tag-item" data-tag="{tags.valueEscaped}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
</h3>
{{{end}}}