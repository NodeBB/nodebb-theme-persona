{{{ each posts.user.selectedGroups }}}
{{{ if posts.user.selectedGroups.slug }}}
<a href="{config.relative_path}/groups/{posts.user.selectedGroups.slug}"><small class="label group-label inline-block" style="color:{posts.user.selectedGroups.textColor};background-color: {posts.user.selectedGroups.labelColor};">{{{ if posts.user.selectedGroups.icon }}}<i class="fa {posts.user.selectedGroups.icon}"></i> {{{ end }}}{posts.user.selectedGroups.userTitle}</small></a>
{{{ end }}}
{{{ end }}}