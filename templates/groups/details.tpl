<div component="groups/container" class="groups details">

	<div component="groups/cover" style="background-image: url({group.cover:url}); background-position: {group.cover:position};">
		{{{ if group.isOwner }}}
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		{{{ end }}}
	</div>

	<div>
		<!-- IMPORT partials/breadcrumbs.tpl -->
	</div>

	<div class="d-flex flex-column flex-md-row justify-content-md-between pb-2 mb-4 mt-2 border-bottom">
		<div class="d-flex flex-column">
			<div class="d-flex align-items-center gap-2">
				<h3 class="mb-0">{group.displayName}</h3>
			</div>
			<div class="d-flex gap-2">
				{group.descriptionParsed}
				<div>
					{{{ if group.private }}}<span class="badge text-bg-light border border-1">[[groups:details.private]]</span>{{{ end }}}
					{{{ if group.hidden }}}<span class="badge text-bg-light border border-1">[[groups:details.hidden]]</span>{{{ end }}}
				</div>
			</div>
		</div>
		<div class="d-flex gap-2 align-items-start">
			{{{ if loggedIn }}}
			{function.membershipBtn, group}
			{{{ end }}}
			{{{ if isAdmin }}}
			<a href="{config.relative_path}/admin/manage/groups/{group.slug}" target="_blank" class="btn btn-light"><i class="fa fa-gear"></i> [[user:edit]]</a>
			{{{ end }}}
		</div>
	</div>

	<div class="text-sm mb-3 nav d-flex flex-row flex-wrap gap-1 justify-content-end">
		<button data-bs-toggle="tab" data-bs-target="#groups-posts" class="btn btn-ghost btn-sm text-start d-flex align-items-center ff-secondary fw-semibold {{{ if template.groups/details }}}active{{{ end }}}">
			<div class="flex-grow-1">[[global:posts]]</div>
		</button>
		<button data-bs-toggle="tab" data-bs-target="#groups-members" class="btn btn-ghost btn-sm text-start d-flex align-items-center ff-secondary fw-semibold gap-2">
			<div class="flex-grow-1">[[groups:members]]</div>
			<span component="group/member/count" class="flex-shrink-0 text-xs" title="{group.memberCount}">{humanReadableNumber(group.memberCount)}</span>
		</button>

		{{{ if group.isOwner }}}
		<button data-bs-toggle="tab" data-bs-target="#groups-pending" class="btn btn-ghost btn-sm text-start d-flex align-items-center ff-secondary fw-semibold gap-2">
			<div class="flex-grow-1">[[groups:details.pending]]</div>
			<span component="group/pending/count" class="flex-shrink-0 text-xs" title="{group.pending.length}">{humanReadableNumber(group.pending.length)}</span>
		</button>

		<button data-bs-toggle="tab" data-bs-target="#groups-invited" class="btn btn-ghost btn-sm text-start d-flex align-items-center ff-secondary fw-semibold gap-2">
			<div class="flex-grow-1">[[groups:details.invited]]</div>
			<span component="group/invited/count" class="flex-shrink-0 text-xs" title="{group.invited.length}">{humanReadableNumber(group.invited.length)}</span>
		</button>

		<button data-bs-toggle="tab" data-bs-target="#groups-admin" class="btn btn-ghost btn-sm text-start d-flex align-items-center ff-secondary fw-semibold">
			<div class="flex-grow-1">[[global:header.admin]]</div>
		</button>
		{{{ end }}}
	</div>

	<div class="d-flex flex-column flex-md-row">
		<div data-widget-area="left">
			{{{each widgets.left}}}
			{{widgets.left.html}}
			{{{end}}}
		</div>

		<div class="flex-grow-1" style="min-width:0;">
			<div class="tab-content">
				<div class="tab-pane fade show active" id="groups-posts" role="tabpanel">
					<h3 class="fw-semibold fs-5">[[global:posts]]</h3>
					{{{ if !posts.length }}}
					<div class="alert alert-info my-2">[[groups:details.has-no-posts]]</div>
					{{{ end }}}
					<!-- IMPORT partials/posts_list.tpl -->
				</div>
				<div class="tab-pane fade" id="groups-members" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.members]]</h3>

					<!-- IMPORT partials/groups/memberlist.tpl -->
				</div>
				{{{ if group.isOwner }}}
				<div class="tab-pane fade" id="groups-pending" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.pending]]</h3>
					<!-- IMPORT partials/groups/pending.tpl -->
				</div>

				<div class="tab-pane fade" id="groups-invited" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.invited]]</h3>
					<!-- IMPORT partials/groups/invited.tpl -->
				</div>

				<div class="tab-pane fade" id="groups-admin" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.owner-options]]</h3>
					<!-- IMPORT partials/groups/admin.tpl -->
				</div>
				{{{ end }}}
			</div>
		</div>

		<div data-widget-area="right">
			{{{each widgets.right}}}
			{{widgets.right.html}}
			{{{end}}}
		</div>
	</div>
</div>
