{{{each tags}}}
<a href="{config.relative_path}/tags/{tags.valueEscaped}">
    <span class="tag tag-item tag-class-{tags.class}" data-tag="{tags.value}" style="{{{ if tags.color }}}color: {tags.color};{{{ end }}}{{{ if tags.bgColor }}}background-color: {tags.bgColor};{{{ end }}}">{tags.valueEscaped}</span>
</a>
{{{end}}}