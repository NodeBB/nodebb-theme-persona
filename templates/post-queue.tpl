<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="btn-toolbar">
	<!-- IMPORT partials/category-filter.tpl -->
</div>
<hr class="hidden-xs"/>
<div class="row">
	<div class="col-xs-12">
		<div class="post-queue panel panel-primary preventSlideout">
			<div class="panel-heading">
				[[post-queue:post-queue]]
			</div>

			<!-- IF !posts.length -->
			<p class="panel-body">
				[[post-queue:description, {config.relative_path}/admin/settings/post#post-queue]]
			</p>
			<!-- ENDIF !posts.length -->

			<div class="table-responsive">
				<table class="table table-striped posts-list">
					<thead>
						<tr>
							<th>[[post-queue:user]]</th>
							<th>[[post-queue:category]]</th>
							<th>[[post-queue:title]]</th>
							<th>[[post-queue:content]] <i class="fa fa-info-circle" data-toggle="tooltip" title="[[post-queue:content-editable]]"></i></th>
							<th>[[post-queue:posted]]</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN posts -->
						<tr data-id="{posts.id}">
							<td class="col-md-1">
								<!-- IF posts.user.userslug -->
								<a href="{config.relative_path}/uid/{posts.user.uid}">{posts.user.username}</a>
								<!-- ELSE -->
								{posts.user.username}
								<!-- ENDIF posts.user.userslug -->
							</td>
							<td class="col-md-2 topic-category" {{{if posts.data.cid}}}data-editable="editable"{{{end}}}">
								<i class="pointer fa fa-fw {{{ if posts.data.cid}}}fa-edit{{{ end }}}" data-toggle="tooltip" title="[[post-queue:category-editable]]"></i>
								<a href="{config.relative_path}/category/{posts.category.slug}"><span class="category-text">{posts.category.name}</span></a>
							</td>
							<td class="col-md-3 topic-title">
								<i class="pointer fa fa-fw {{{ if !posts.data.tid}}}fa-edit{{{ end }}}" data-toggle="tooltip" title="[[post-queue:title-editable]]"></i>
								<!-- IF posts.data.tid -->
								<a href="{config.relative_path}/topic/{posts.data.tid}">[[post-queue:reply-to, {posts.topic.title}]]</a>
								<!-- ENDIF posts.data.tid -->
								<span class="title-text">{posts.data.title}</span>
							</td>
							{{{if !posts.data.tid}}}
							<td class="col-md-3 topic-title-editable hidden">
								<input class="form-control" type="text" value="{posts.data.title}"/>
							</td>
							{{{end}}}
							<td class="col-md-4 post-content">{posts.data.content}</td>
							<td class="col-md-4 post-content-editable hidden">
								<textarea class="form-control">{posts.data.rawContent}</textarea>
							</td>
							<td class="col-md-1">
								<span class="timeago" title={posts.data.timestampISO}></span>
							</td>
							<td class="col-md-1">
								<div class="btn-group pull-right">
									<button class="btn btn-success btn-xs" data-action="accept"><i class="fa fa-check"></i></button>
									<button class="btn btn-danger btn-xs" data-action="reject"><i class="fa fa-times"></i></button>
								</div>
							</td>
						</tr>
						<!-- END posts -->
					</tbody>
				</table>
			</div>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>