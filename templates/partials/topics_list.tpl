<ul component="category" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li component="category/topic" class="row clearfix {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{topics.title}">

		<div class="col-md-7 col-sm-9 col-xs-11 content">
			<div class="avatar pull-left">
				<!-- IF showSelect -->
					<div class="select fa-square-o">
						<img src="{topics.user.picture}" class="img-circle user-img" />
						<i class="fa fa-check"></i>
					</div>
				<!-- ELSE -->
					<a href="{relative_path}/user/{topics.user.userslug}" class="pull-left">
						<img src="{topics.user.picture}" class="img-circle user-img" title="{topics.user.username}"/>
					</a>
				<!-- ENDIF showSelect -->
			</div>

			<h1 class="title pull-left">
				<i component="topic/pinned" class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"></i>
				<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"></i>
				<a href="{relative_path}/topic/{topics.slug}" itemprop="url">{topics.title}</a><br />

				<!-- IF template.category -->
				<small>[[global:posted_ago, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
				<!-- ELSE -->
				<small>[[global:posted_in_ago, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>]]</small>
				<!-- ENDIF template.category -->
			</h1>
		</div>

		<!-- IF !categories.link -->
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
			<small>[[global:views]]</small>
		</div>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
			<small>[[global:posts]]</small>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-1">
			<div class="card" style="border-color: {bgColor}">
				<!-- IF topics.unreplied -->
				<p class="hidden-xs">
					[[category:no_replies]]
				</p>
				<!-- ELSE -->
				<p class="hidden-xs">
					<a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
						<strong>{topics.teaser.user.username}</strong>
					</a>
					<small class="timeago" title="{topics.teaser.timestamp}"></small>
				</p>
				<p>
					{topics.teaser.content}
				</p>
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
		<!-- ELSE -->
		<div class="col-md-4">

		</div>
		<!-- ENDIF !categories.link -->
	</li>
	<!-- END topics -->
</ul>