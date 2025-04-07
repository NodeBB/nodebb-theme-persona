{{{ if (multiplePages && !config.theme.topMobilebar) }}}
<div class="show-more-container">
	<div class="text-center d-block d-md-none">
		<a href="{url}" class="btn btn-sm btn-primary">[[search:see-more-results, {matchCount}]]</a>
	</div>
	<li role="separator" class="dropdown-divider d-block d-md-none"></li>
</div>
{{{ end }}}

<ul id="quick-search-results" class="quick-search-results list-unstyled mb-0 p-0 pe-1 overflow-auto overscroll-behavior-contain ff-base ghost-scrollbar" style="max-width: {dropdown.maxWidth}; max-height: {dropdown.maxHeight};">
	{{{ each categories }}}
	<li data-cid="{./cid}" class="d-flex flex-column gap-1">
		<div class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center rounded-1 text-start text-reset d-block text-truncate px-2 py-1 position-relative">
			<div class="flex-shrink-0">{buildCategoryIcon(@value, "40px", "rounded-circle")}</div>
			<div class="flex-grow-1">
				<a class="stretched-link" href="{config.relative_path}/category/{./slug}"></a>
				<span class="quick-search-title fw-semibold text-sm">
					{./name}
					{{{ if ./url }}}
					(<i class="fa fa-globe"></i> {./slug})
					{{{ end }}}
				</span>
				<br/>
				<div class="snippet text-xs text-break text-wrap mb-0 text-sm text-secondary line-clamp-1">
					{./descriptionParsed}
				</div>
			</div>
		</div>
	</li>
	{{{ if !@last }}}
	<li role="separator" class="dropdown-divider"></li>
	{{{ end }}}
	{{{ end }}}
</ul>

{{{ if multiplePages }}}
<div class="text-center mt-2 d-none d-md-block">
	<a href="{url}" class="btn btn-sm btn-primary">[[search:see-more-results, {matchCount}]]</a>
</div>
{{{ end }}}
{{{ if (multiplePages && config.theme.topMobilebar) }}}
<div class="text-center mt-2 d-block d-md-none">
	<a href="{url}" class="btn btn-sm btn-primary">[[search:see-more-results, {matchCount}]]</a>
</div>
{{{ end }}}

{{{if !categories.length}}}
<div class="text-center no-results py-2 py-md-0">[[search:no-matches]]</li>
<li role="separator" class="dropdown-divider d-block d-md-none"></li>
{{{end}}}