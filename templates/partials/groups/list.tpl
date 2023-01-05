	{{{each groups}}}
	<div class="col-lg-4 col-md-6 col-sm-12 mb-3" component="groups/summary" data-slug="{groups.slug}">
		<div class="card h-100">
			<a href="{config.relative_path}/groups/{groups.slug}" class="card-header list-cover" style="{{{ if groups.cover:thumb:url }}}background-image: url({./cover:thumb:url});background-size: cover;	min-height: 125px; background-position: {./cover:position}{{{ end }}}">
				<h5 class="card-title">{groups.displayName} <small>{groups.memberCount}</small></h5>
			</a>
			<div class="card-body">
				<ul class="members">
					{{{each groups.members}}}
					<li>
						<a href="{config.relative_path}/user/{groups.members.userslug}">{buildAvatar(groups.members, "24px", true)}</a>
					</li>
					{{{end}}}
					{{{ if groups.truncated }}}
					<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
					{{{ end }}}
				</ul>
			</div>
		</div>
	</div>
	{{{end}}}