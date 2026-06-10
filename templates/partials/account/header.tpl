<div class="account">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div data-widget-area="header">
		{{{each widgets.header}}}
		{{widgets.header.html}}
		{{{end}}}
	</div>

	<div class="cover" component="account/cover" style="background-image: url({escape(cover:url)}); background-position: {cover:position};">
		<div class="avatar-wrapper" data-uid="{uid}">
			{{buildAvatar(@value, "128px", true)}}
			<span component="user/status" class="position-absolute border border-white border-2 rounded-circle status {status}"><span class="visually-hidden">[[global:{status}]]</span></span>

			{{{ if !isSelf }}}
			<button class="btn-morph persona-fab {{{ if isFollowing }}}heart{{{ else }}}plus{{{ end }}}" title="{{{ if isFollowing }}}[[global:unfollow]]{{{ else }}}[[global:follow]]{{{ end }}}">
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
			<div class="controls">
				<a href="#" class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></a>
				<a href="#" class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></a>
				<a href="#" class="remove"><i class="fa fa-fw fa-4x fa-times"></i></a>
			</div>
			<a href="#" class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></a>
			<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			{{{ end }}}

			<!-- IMPORT partials/account/menu.tpl -->
		</div>
	</div>
