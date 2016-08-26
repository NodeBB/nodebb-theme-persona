	<!-- BEGIN groups -->
	<div class="col-xl-4 col-lg-6 col-md-12" component="groups/summary" data-slug="{groups.slug}">
		<div class="card">
			<a href="{config.relative_path}/groups/{groups.slug}" class="card-header list-cover" style="<!-- IF groups.cover:thumb:url -->background-image: url({groups.cover:thumb:url});<!-- ENDIF groups.cover:thumb:url -->">
				<h4 class="panel-title">{groups.displayName} <small>{groups.memberCount}</small></h4>
			</a>
			<div class="card-block">
				<ul class="members">
					<!-- BEGIN members -->
					<li>
						<a href="{config.relative_path}/user/{groups.members.userslug}">
							<!-- IF groups.members.picture -->
							<img class="avatar avatar-sm avatar-rounded" src="{groups.members.picture}" title="{groups.members.username}" />
							<!-- ELSE -->
							<div class="avatar avatar-sm avatar-rounded" style="background-color: {groups.members.icon:bgColor};" title="{groups.members.username}">{groups.members.icon:text}</div>
							<!-- ENDIF groups.members.picture -->
						</a>
					</li>
					<!-- END members -->
					<!-- IF groups.truncated -->
					<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
					<!-- ENDIF groups.truncated -->
				</ul>
			</div>
		</div>
	</div>
	<!-- END groups -->