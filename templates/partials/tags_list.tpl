{{{each tags}}}
<h5 class="float-start tag-container me-5 mb-5 fw-bold">
	<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./value}">
		<span class="tag-item text-muted text-uppercase text-nowrap tag-class-{tags.class} me-2" data-tag="{tags.value}">{./value}</span>
		<span class="tag-topic-count text-primary text-nowrap" title="{./score}">{{tx("global:x-topics", formattedNumber(./score))}}</span>
	</a>
</h5>
{{{end}}}