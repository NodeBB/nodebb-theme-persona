<div class="account">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div data-widget-area="header">
		{{{each widgets.header}}}
		{{widgets.header.html}}
		{{{end}}}
	</div>

	<div class="cover position-absolute start-0 top-0" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
		<div class="avatar-wrapper bg-body rounded-circle position-absolute start-50 top-100 translate-middle hover-parent" data-uid="{uid}" style="padding: 4px;">
			{{buildAvatar(@value, "128px", true)}}
			{{{ if (allowProfilePicture && isSelfOrAdminOrGlobalModerator)}}}
			<a href="#" component="profile/change/picture" class="d-none d-md-block pointer p-2 rounded-1 text-bg-light position-absolute top-50 start-50 translate-middle hover-opacity-75">
				<span><i class="fa fa-fw fa-upload"></i></span>
			</a>
			{{{ end }}}

			<span component="user/status" class="fs-3 position-absolute border border-white border-2 rounded-circle status {status}" style="top: 17px; right: 3px; padding: 10px;"><span class="visually-hidden">[[global:{status}]]</span></span>

			{{{ if !isSelf }}}
			<button style="top: 93px; right:4px;" class="btn-morph persona-fab position-absolute {{{ if isFollowing }}}heart{{{ else }}}plus{{{ end }}}" title="{{{ if isFollowing }}}[[global:unfollow]]{{{ else }}}[[global:follow]]{{{ end }}}">
				<span>
					<span class="s1"></span>
					<span class="s2"></span>
					<span class="s3"></span>
				</span>
			</button>
			{{{ end }}}
		</div>

		<div class="container">
			{{{ if (allowCoverPicture && canEdit) }}}
			<div class="controls text-center">
				<span class="upload p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-upload"></i></span>
				<span class="resize p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-arrows"></i></span>
				<span class="remove p-2 m-2 rounded-1 text-bg-light opacity-75"><i class="fa fa-fw fa-times"></i></span>
			</div>
			<a href="#" class="save btn btn-primary">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></a>
			<div class="indicator text-bg-primary">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			{{{ end }}}

			<!-- IMPORT partials/account/menu.tpl -->
		</div>
	</div>
