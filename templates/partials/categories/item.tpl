<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix category-{../cid}">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-12 <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-7 col-sm-9<!-- ENDIF config.hideCategoryLastPost -->">
		<div class="icon d-inline-block" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title d-inline-block">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
			<!-- IF !config.hideSubCategories -->
			{{{ if ../children.length }}}
			<span class="category-children">
			{{{ each ../children }}}
			{{{ if !../isSection }}}
			<span class="category-children-item">
				<div role="presentation" class="icon d-inline-block" style="{function.generateCategoryBackground}">
					{{{ if ../icon }}}
					<i class="fa fa-fw {../icon}"></i>
					{{{ end }}}
				</div>
				{{{ if ../link }}}
				<a href="{../link}"><small>{../name}</small></a></span>
				{{{ else }}}
				<a href="{config.relative_path}/category/{../slug}"><small>{../name}</small></a>
				{{{ end }}}
			</span>
			{{{ end }}}
			{{{ end }}}
			</span>
			{{{ end }}}
			<!-- ENDIF !config.hideSubCategories -->
		</div>
		<span class="d-block d-sm-none pull-right">
			<!-- IF ../teaser.timestampISO -->
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
			<!-- ENDIF ../teaser.timestampISO -->
		</span>
	</div>

	<!-- IF !../link -->
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
		<small>[[global:topics]]</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
		<small>[[global:posts]]</small>
	</div>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
