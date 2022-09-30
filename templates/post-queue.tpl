<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="btn-toolbar justify-content-end">
	<div class="me-2">
	<!-- IMPORT partials/category-filter-right.tpl -->
	</div>
	{{{ if !singlePost }}}
	<div class="btn-group bottom-sheet" component="post-queue/bulk-actions">
		<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" autocomplete="off" aria-haspopup="true" aria-expanded="false">
			<i class="fa fa-clone"></i> [[post-queue:bulk-actions]] <span class="caret"></span>
		</button>
		<ul class="dropdown-menu dropdown-menu-end">
			<li><a class="dropdown-item" href="#" data-action="accept-all">[[post-queue:accept-all]]</a></li>
			<li><a class="dropdown-item" href="#" data-action="accept-selected">[[post-queue:accept-selected]]</a></li>
			<li class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#" data-action="reject-all">[[post-queue:reject-all]]</a></li>
			<li><a class="dropdown-item" href="#" data-action="reject-selected">[[post-queue:reject-selected]]</a></li>
		</ul>
	</div>
	{{{ end }}}
</div>
<hr/>
<div class="row">
	<div class="col-12">
		<div class="post-queue preventSlideout posts-list">
			{{{ if !posts.length }}}
			{{{ if isAdmin }}}
			<div class="card card-body">
				<p>
				[[post-queue:description, {config.relative_path}/admin/settings/post#post-queue]]
				</p>
			</div>
			{{{ end }}}
			{{{ end }}}

			{{{ each posts }}}
			<div class="card mb-3" data-id="{posts.id}">
				<div class="card-header">
					{{{ if !singlePost }}}
					<input type="checkbox" class="form-check-input" autocomplete="off" />
					{{{ end }}}
					<strong>{{{ if posts.data.tid }}}[[post-queue:reply]]{{{ else }}}[[post-queue:topic]]{{{ end }}}</strong>
					<span class="timeago float-end" title={posts.data.timestampISO}></span>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-lg-2 col-12">
							<strong>[[post-queue:user]]</strong>
							<div>
								{{{ if posts.user.userslug}}}
								<a href="{config.relative_path}/uid/{posts.user.uid}">{buildAvatar(posts.user, "24px", true, "not-responsive")} {posts.user.username}</a>
								{{{ else }}}
								{posts.user.username}
								{{{ end }}}
							</div>
						</div>
						<div class="col-lg-3 col-12">
							<strong>[[post-queue:category]]{{{ if posts.data.cid}}} <i class="fa fa-fw fa-edit" data-bs-toggle="tooltip" title="[[post-queue:category-editable]]"></i>{{{ end }}}</strong>
							<div class="topic-category" {{{if posts.data.cid}}}data-editable="editable"{{{end}}}">
								<a href="{config.relative_path}/category/{posts.category.slug}">
									<div class="category-item d-inline-block">
										{buildCategoryIcon(./category, "24px", "rounded-circle")}
										{posts.category.name}
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-7 col-12">
							<strong>{{{ if posts.data.tid }}}[[post-queue:topic]]{{{ else }}}[[post-queue:title]] <i class="fa fa-fw fa-edit" data-bs-toggle="tooltip" title="[[post-queue:title-editable]]"></i>{{{ end }}}</strong>
							<div class="topic-title text-break">
								{{{ if posts.data.tid }}}
								<a href="{config.relative_path}/topic/{posts.data.tid}">{posts.topic.title}</a>
								{{{ end }}}
								<span class="title-text">{posts.data.title}</span>
							</div>
							{{{if !posts.data.tid}}}
							<div class="topic-title-editable hidden">
								<input class="form-control" type="text" value="{posts.data.title}"/>
							</div>
							{{{end}}}
						</div>
					</div>
					<hr/>
					<div>
						<strong>[[post-queue:content]] <i class="fa fa-fw fa-edit" data-bs-toggle="tooltip" title="[[post-queue:content-editable]]"></i></strong>
						<div class="post-content text-break">{posts.data.content}</div>
						<div class="post-content-editable hidden">
							<textarea class="form-control w-100" style="height:300px;">{posts.data.rawContent}</textarea>
						</div>
					</div>
				</div>
				<div class="card-footer text-end">
					<div>
						{{{ if canAccept }}}
						<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:reject]]</button>
						<button class="btn btn-info btn-sm" data-action="notify"><i class="fa fa-fw fa-bell-o"></i> [[post-queue:notify]]</button>
						<button class="btn btn-success btn-sm" data-action="accept"><i class="fa fa-fw fa-check"></i> [[post-queue:accept]] </button>
						{{{ else }}}
						<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:remove]]</button>
						{{{ end }}}
					</div>
				</div>
			</div>
			{{{ end }}}
		</div>

		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>