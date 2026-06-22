{{{ if ./isSection }}}
{{tx(./name)}}
{{{ else }}}
<a class="text-reset" href="{{{ if ./link }}}{./link}{{{ else }}}{config.relative_path}/category/{./slug}{{{ end }}}" itemprop="url">{{tx(./name)}}</a>
{{{ end }}}
