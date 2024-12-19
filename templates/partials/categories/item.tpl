<li component="categories/category" data-cid="{./cid}" class="w-100 py-2 mb-2 gap-lg-0 gap-2 d-flex flex-column flex-md-row align-items-start {{{ if !@last }}}border-bottom{{{ end }}} border-bottom-lg-0 category-{./cid} {./unread-class}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex col-md-7 gap-2 gap-lg-3">
		<div class="flex-shrink-0">
		{buildCategoryIcon(@value, "48px", "rounded-circle")}
		</div>
		<div class="flex-grow-1 d-flex flex-wrap gap-1">
			<h2 class="title text-break fs-4 fw-semibold m-0 tracking-tight w-100">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted text-sm w-100">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if ./teaser.timestampISO }}}
			<div class="d-block d-md-none">
				<a class="permalink timeago text-muted" title="{../teaser.timestampISO}" href="{../teaser.url}">
				</a>
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children row row-cols-1 row-cols-md-2 g-2 my-1 w-100">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small d-flex gap-1 align-items-center">
					{buildCategoryIcon(@value, "24px", "rounded-circle")}
					<a href="{{{ if ./link }}}{./link}{{{ else }}}{config.relative_path}/category/{./slug}{{{ end }}}" class="text-reset">{./name}</a>
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>
	{{{ if !./link }}}
	<div class="d-flex col-md-5 col-12 align-content-stretch">
		<div class="meta stats d-none d-lg-grid col-6 gap-1 pe-2 text-muted" style="grid-template-columns: 1fr 1fr;">
			<div class="overflow-hidden rounded-1 d-flex flex-column align-items-center">
				<span class="fs-4" title="{./totalTopicCount}">{humanReadableNumber(./totalTopicCount, 0)}</span>
				<span class="text-uppercase text-xs">[[global:topics]]</span>
			</div>
			<div class="overflow-hidden rounded-1 d-flex flex-column align-items-center">
				<span class="fs-4" title="{./totalPostCount}">{humanReadableNumber(./totalPostCount, 0)}</span>
				<span class="text-uppercase text-xs">[[global:posts]]</span>
			</div>
		</div>
		{{{ if !config.hideCategoryLastPost }}}
		<div component="topic/teaser" class="teaser col-md-6 col-12 d-none d-md-block">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
	</div>
	{{{ end }}}
</li>
