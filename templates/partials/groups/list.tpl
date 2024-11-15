{{{each groups}}}
<div class="col-lg-4 col-md-6 col-sm-12 mb-3" component="groups/summary" data-slug="{groups.slug}">
	<div class="card h-100">
		<a href="{config.relative_path}/groups/{groups.slug}" class="card-header list-cover" style="{{{ if groups.cover:thumb:url }}}background-image: url({./cover:thumb:url});background-size: cover;	min-height: 125px; background-position: {./cover:position}{{{ end }}}">
			<h5 class="card-title d-inline-block mw-100 px-2 py-1 text-truncate text-capitalize fw-bold rounded-1" style="color: white;background-color: rgba(0,0,0,0.5);">{groups.displayName} <small>{formattedNumber(groups.memberCount)}</small></h5>
		</a>
		<div class="card-body">
			<p class="text-muted">
				{./description}
			</p>
			<ul class="members list-unstyled d-flex align-items-center gap-2 flex-wrap">
				{{{each groups.members}}}
				<li>
					<a href="{config.relative_path}/user/{groups.members.userslug}">{buildAvatar(groups.members, "24px", true)}</a>
				</li>
				{{{end}}}
			</ul>
		</div>
	</div>
</div>
{{{end}}}