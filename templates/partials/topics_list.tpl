<ul component="category" class="topic-list" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="row clearfix category-item {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<link itemprop="url" content="{config.relative_path}/topic/{../slug}" />
		<meta itemprop="name" content="{function.stripTags, ../title}" />
		<meta itemprop="itemListOrder" content="descending" />
		<meta itemprop="position" content="{increment(./index, "1")}" />
		<a id="{../index}" data-index="{../index}" component="topic/anchor"></a>

		<div class="col-md-6 col-sm-9 col-10 content">
			<div class="avatar float-start me-2">
				<!-- IF showSelect -->
				<div class="select" component="topic/select">
					{{{ if ./thumbs.length }}}
					<img src="{./thumbs.0.url}" class="user-img not-responsive" />
					{{{ else }}}
					{buildAvatar(../user, "48px", true, "not-responsive")}
					{{{ end }}}
					<i class="fa fa-check"></i>
				</div>
				<!-- ENDIF showSelect -->

				<!-- IF !showSelect -->
				<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->" class="float-start">
					{{{ if ./thumbs.length }}}
					<img src="{./thumbs.0.url}" class="user-img not-responsive" />
					{{{ else }}}
					{buildAvatar(../user, "48px", true, "not-responsive")}
					{{{ end }}}
				</a>
				<!-- ENDIF !showSelect -->
			</div>

			<h2 component="topic/header" class="title mb-1">
				<i component="topic/watched" class="fa fa-bell-o {{{ if !topics.followed }}}hidden{{{ end }}}" title="[[topic:watching]]"></i>
				<i component="topic/watched" class="fa fa-eye-slash {{{ if !topics.ignored }}}hidden{{{ end }}}" title="[[topic:ignoring]]"></i>
				<i component="topic/scheduled" class="fa fa-clock-o {{{ if !topics.scheduled }}}hidden{{{ end }}}" title="[[topic:scheduled]]"></i>
				<i component="topic/pinned" class="fa fa-thumb-tack {{{ if (topics.scheduled || !topics.pinned) }}}hidden{{{ end }}}" title="{{{ if !../pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {../pinExpiryISO}]]{{{ end }}}"></i>
				<i component="topic/locked" class="fa fa-lock {{{ if !topics.locked }}}hidden{{{ end }}}" title="[[topic:locked]]"></i>
				<i component="topic/moved" class="fa fa-arrow-circle-right {{{ if !topics.oldCid }}}hidden{{{ end }}}" title="[[topic:moved]]"></i>
				{{{each topics.icons}}}{@value}{{{end}}}

				{{{ if topics.noAnchor }}}
				<span>{./title}</span>
				{{{ else }}}
				<a href="{config.relative_path}/topic/{./slug}{{{ if ./bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
				{{{ end }}}
			</h2>
			<div class="info">
				<!-- IF !template.category -->
				<div class="category-item d-inline-block">
					{buildCategoryIcon(./category, "24px", "rounded-circle")}
					<a class="text-muted" href="{config.relative_path}/category/{topics.category.slug}">{topics.category.name}</a>
				</div>
				&bull;
				<!-- ENDIF !template.category -->


				<span data-tid="{./tid}" component="topic/tags" class="tag-list hidden-xs {{{ if !./tags.length }}}hidden{{{ end}}}">
					{{{ each ./tags }}}
					<!-- IMPORT partials/topic/tag.tpl -->
					{{{ end }}}
					&bull;
				</span>

				<span class="hidden-xs"><span class="timeago text-muted" title="{./timestampISO}"></span> &bull; <a class="text-muted" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">{./user.displayname}</a></span>

				<span class="visible-xs-inline timeago text-muted" title="{{{ if ./teaser.timestampISO }}}{./teaser.timestampISO}{{{ else }}}{./timestampISO}{{{ end }}}"></span>
			</div>
		</div>

		<div class="mobile-stat col-2 visible-xs text-end">
			<span>{humanReadableNumber(topics.postcount)}</span> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"><i class="fa fa-arrow-circle-right"></i></a>
		</div>

		<div class="col-md-1 hidden-sm hidden-xs stats stats-votes">
			<!-- IF !reputation:disabled -->
			<span title="{topics.votes}">{humanReadableNumber(topics.votes)}</span><br />
			<small>[[global:votes]]</small>
			<!-- END -->
		</div>

		<div class="col-md-1 hidden-sm hidden-xs stats stats-postcount">
			<span title="{topics.postcount}">{humanReadableNumber(topics.postcount)}</span><br />
			<small>[[global:posts]]</small>
		</div>

		<div class="col-md-1 hidden-sm hidden-xs stats stats-viewcount">
			<span title="{topics.viewcount}">{humanReadableNumber(topics.viewcount)}</span><br />
			<small>[[global:views]]</small>
		</div>

		<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
			<div class="lastpost background-link-container" style="border-color: {topics.category.bgColor}">
				<a class="background-link" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"></a>
				<!-- IF topics.unreplied -->
				<p>
					[[category:no-replies]]
				</p>
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<p>
					<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">{buildAvatar(topics.teaser.user, "24px", true, "not-responsive")}</a>
					<a class="permalink text-muted" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
				</p>
				<div class="post-content">
					{topics.teaser.content}
				</div>
				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	{{{end}}}
</ul>
