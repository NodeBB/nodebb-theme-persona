<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="btn-group account-fab">
	<button type="button" class="fab dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-ellipsis-v"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<li>
			<a href="{config.relative_path}/user/{userslug}" class="inline-block" id="profile"><i class="fa fa-user"></i> [[user:profile]]</a>
		</li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/settings"><i class="fa fa-gear"></i> [[user:settings]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/edit"><i class="fa fa-pencil-square-o"></i> [[user:edit]]</a></li>
		<!-- ENDIF showHidden -->
		<li class="divider"></li>
		<li><a href="{config.relative_path}/user/{userslug}/following"><i class="fa fa-fw fa-users"></i> [[user:following]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/followers"><i class="fa fa-fw fa-users"></i> [[user:followers]]</a></li>
		<li class="divider"></li>
		<li><a href="{config.relative_path}/user/{userslug}/topics"><i class="fa fa-fw fa-book"></i> [[global:topics]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/posts"><i class="fa fa-fw fa-pencil"></i> [[global:posts]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/groups"><i class="fa fa-fw fa-users"></i> [[global:header.groups]]</a></li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/favourites"><i class="fa fa-fw fa-heart"></i> [[user:favourites]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/watched"><i class="fa fa-fw fa-eye"></i> [[user:watched]]</a></li>
		<!-- ENDIF showHidden -->
		<!-- BEGIN profile_links -->
		<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userslug}/{profile_links.route}"><i class="fa fa-fw {profile_links.icon}"></i> {profile_links.name}</a></li>
		<!-- END profile_links -->
	</ul>
</div>

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
</div>