{{{each tags}}}
<h5 class="float-start tag-container me-4 mb-4 fw-bold">
	<a href="{config.relative_path}/tags/{tags.valueEncoded}" data-tag="{tags.valueEscaped}"><span class="tag-item text-muted text-uppercase text-nowrap tag-class-{tags.class} me-2" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span><span class="tag-topic-count text-primary text-nowrap" title="{tags.score}">{formattedNumber(tags.score)}</span></a>
</h5>
{{{end}}}