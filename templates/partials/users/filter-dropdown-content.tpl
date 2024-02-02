<button type="button" class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	{{{ if selectedUser }}}
	<span class="">{buildAvatar(selectedUser, "20px", true, "not-responsive")} {selectedUser.username}</span>
	{{{ else }}}
	<span class="">[[users:all-users]]</span>
	{{{ end }}} <span class="caret"></span>
</button>
<ul class="dropdown-menu" role="menu">
	<li role="presentation" class="user {{{ if !selectedUser}}}selected{{{end}}}">
		<a class="dropdown-item" role="menuitem" href="{config.relative_path}/{allUsersUrl}"><i class="fa fa-fw {{{ if !selectedUser }}}fa-check{{{ end }}}"></i>[[users:all-users]]</a>
	</li>
	{{{ each users }}}
	<li role="presentation" class="user {{{ if ./selected}}}selected{{{end}}}">
		<a class="dropdown-item" role="menuitem" href="{config.relative_path}/{./url}">
			<i class="fa fa-fw {{{ if ./selected }}}fa-check{{{ end }}}"></i>
			<div class="d-inline-flex gap-1 align-items-center">{buildAvatar(@value, "24px", true, "not-responsive")} {./username}</div>
		</a>
	</li>
	{{{end}}}
</ul>
