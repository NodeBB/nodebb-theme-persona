<div class="account">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div data-widget-area="header">
		{{{each widgets.header}}}
		{{widgets.header.html}}
		{{{end}}}
	</div>

	<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
		<div class="avatar-wrapper" data-uid="{uid}">
			<!-- IF picture -->
			<img src="{picture}" class="avatar avatar-rounded" style="--avatar-size: 128px;" />
			<!-- ELSE -->
			<div class="avatar avatar-rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
			<!-- ENDIF picture -->
			<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>

			<!-- IF loggedIn -->
			<!-- IF !isSelf -->
			<button class="btn-morph persona-fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing -->" title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
				<span>
					<span class="s1"></span>
					<span class="s2"></span>
					<span class="s3"></span>
				</span>
			</button>
			<!-- ENDIF !isSelf -->
			<!-- ENDIF loggedIn -->
		</div>

		<div class="container">
			<!-- IF allowCoverPicture -->
			<!-- IF canEdit -->
			<div class="controls">
				<a href="#" class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></a>
				<a href="#" class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></a>
				<a href="#" class="remove"><i class="fa fa-fw fa-4x fa-times"></i></a>
			</div>
			<a href="#" class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></a>
			<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			<!-- ENDIF canEdit -->
			<!-- ENDIF allowCoverPicture -->

			<!-- IMPORT partials/account/menu.tpl -->
		</div>
	</div>
