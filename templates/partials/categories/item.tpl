<li component="categories/category" data-cid="{./cid}" data-numRecentReplies="1" class="row clearfix category-{./cid} {./unread-class}">
	<meta itemprop="name" content="{../name}">

	<div class="content col-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="float-start">
		{buildCategoryIcon(@value, "48px", "rounded-circle")}
		</div>
		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description text-muted">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
			<!-- IF !config.hideSubCategories -->
			{{{ if ../children.length }}}
			<div class="category-children">
				{{{ each ../children }}}
				{{{ if !../isSection }}}
				<span class="category-children-item">
					{buildCategoryIcon(@value, "24px", "rounded-circle")}
					{{{ if ../link }}}
					<a href="{../link}">{../name}</a>
					{{{ else }}}
					<a href="{config.relative_path}/category/{../slug}">{../name}</a>
					{{{ end }}}
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			<!-- ENDIF !config.hideSubCategories -->
		</div>
		<span class="d-block d-sm-none float-end">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
	</div>

	<!-- IF !./link -->
	<div class="col-md-1 d-none d-md-block stats text-muted">
		<span title="{./totalTopicCount}">{humanReadableNumber(./totalTopicCount)}</span><br />
		<small>[[global:topics]]</small>
	</div>
	<div class="col-md-1 d-none d-md-block stats text-muted">
		<span title="{./totalPostCount}">{humanReadableNumber(./totalPostCount)}</span><br />
		<small>[[global:posts]]</small>
	</div>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 teaser d-none d-sm-block" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !./link -->
</li>
