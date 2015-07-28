<ul component="category" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li component="category/topic" class="row clearfix {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{function.stripTags, title}">

		<div class="col-md-7 col-sm-9 col-xs-11 content">
			<div class="avatar hidden-sm hidden-xs pull-left">
				<!-- IF showSelect -->
					<div class="select fa-square-o">
						<img src="<!-- IF topics.thumb -->{topics.thumb}<!-- ELSE -->{topics.user.picture}<!-- ENDIF topics.thumb -->" class="img-circle user-img" />
						<i class="fa fa-check"></i>
					</div>
				<!-- ELSE -->
					<a href="{config.relative_path}/user/{topics.user.userslug}" class="pull-left">
						<img src="<!-- IF topics.thumb -->{topics.thumb}<!-- ELSE -->{topics.user.picture}<!-- ENDIF topics.thumb -->" class="img-circle user-img" title="{topics.user.username}"/>
					</a>
				<!-- ENDIF showSelect -->
			</div>

			<h1 component="topic/header" class="title pull-left">
				<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"></i>
				<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"></i>
				<a href="{config.relative_path}/topic/{topics.slug}" itemprop="url">{topics.title}</a><br />

				<!-- IF !template.category -->
				<small>
					<a href="{config.relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a> &bull;
				</small>
				<!-- ENDIF !template.category -->

				<span class="tag-list">
					<!-- BEGIN tags -->
					<a href="{config.relative_path}/tags/{topics.tags.value}"><span class="tag">{topics.tags.value}</span></a>
					<!-- END tags -->
					<!-- IF topics.tags.length --><small>&bull;</small><!-- ENDIF topics.tags.length -->
				</span>

				<small>[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
			</h1>
		</div>

		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
			<small>[[global:posts]]</small>
		</div>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
			<small>[[global:views]]</small>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-1 teaser">
			<div class="card" style="border-color: {bgColor}">
				<!-- IF topics.unreplied -->
				<p class="hidden-xs">
					[[category:no_replies]]
				</p>
				<!-- ELSE -->
				<p class="hidden-xs">
					<strong>{topics.teaser.user.username}</strong>
					<a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<small class="timeago" title="{topics.teaser.timestamp}"></small>
					</a>
				</p>
				<div class="post-content">
					{topics.teaser.content}
				</div>
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	<!-- END topics -->
</ul>