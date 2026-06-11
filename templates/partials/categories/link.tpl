{{{ if ./isSection }}}
{./name}
{{{ else }}}
<a class="text-reset" href="{{{ if ./link }}}{{escapeTxHtml(./link)}{{{ else }}}{config.relative_path}/category/{./slug}{{{ end }}}" itemprop="url">{./name}</a>
{{{ end }}}