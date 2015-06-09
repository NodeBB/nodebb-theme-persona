<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="col-md-7 col-sm-9 col-xs-11 content">
		<div class="icon hidden-sm hidden-xs pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h1 class="title pull-left">
			<!-- IMPORT partials/categories/link.tpl --><br />
			<small>{../description}</small>
		</h1>
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
	<div class="col-md-3 col-sm-3 col-xs-1 teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ELSE -->
	<div class="col-md-2 hidden-sm-hidden-xs"></div>
	<div class="col-md-3 col-sm-3 col-xs-1 teaser">
		<div class="card" style="border-color: {../bgColor}"></div>
	</div>
	<!-- ENDIF !../link -->
</li>