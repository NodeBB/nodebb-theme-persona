<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="row">
	<div class="category <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<!-- IF children.length --><hr class="hidden-xs"/><!-- ENDIF children.length -->

		<div class="clearfix">
			<!-- IF privileges.topics:create -->
			<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
			<!-- ELSE -->
				<!-- IF !loggedIn -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF !loggedIn -->
			<!-- ENDIF privileges.topics:create -->

			<a href="{url}" class="inline-block">
				<div class="alert alert-warning hide" id="new-topics-alert"></div>
			</a>

			<span class="pull-right" component="category/controls">
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->
			</span>
		</div>

		<hr class="hidden-xs" />

		<p class="hidden-xs">{name}</p>

		<!-- IF !topics.length -->
		<!-- IF privileges.topics:create -->
		<hr class="visible-xs" />
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		<!-- ENDIF privileges.topics:create -->
		<!-- ENDIF !topics.length -->

		<!-- IMPORT partials/topics_list.tpl -->

		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div data-widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
