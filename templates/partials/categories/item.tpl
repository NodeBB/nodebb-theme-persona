<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="col-md-7 col-sm-9 col-xs-11 content">
		<div class="icon pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl --><br />
			{../descriptionParsed}
		</h2>
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
	<div class="col-md-3 col-sm-3 col-xs-1 teaser hidden-xs">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !../link -->
</li>