<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	<!-- IF isSelf -->
	<div class="controls">
		<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
		<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
	</div>
	<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
	<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
	<!-- ENDIF isSelf -->

	<div class="avatar">
		<!-- IF picture -->
		<img src="{picture}" class="user-profile-picture" />
		<!-- ELSE -->
		<div class="user-icon user-profile-picture" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
		<!-- ENDIF picture -->
	</div>

	<div class="container">
		<!-- IMPORT partials/account/menu.tpl -->
	</div>
</div>