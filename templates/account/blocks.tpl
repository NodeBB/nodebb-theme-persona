<!-- IMPORT partials/account/header.tpl -->
<h1 class="fs-2">[[pages:account/blocks, {username}]]</h1>
<div class="row justify-content-end mb-2">
	<div class="col-3">
		<div class="dropdown">
			<input class="form-control" type="text" id="user-search" placeholder="[[users:enter-username]]" data-bs-toggle="dropdown" autocomplete="off" aria-haspopup="true" aria-expanded="false"/>

			<ul component="blocks/search/list" class="dropdown-menu block-edit list-unstyled" role="menu">
				<li component="blocks/start-typing">
					<a href="#" class="dropdown-item" role="menuitem">[[admin/menu:search.start-typing]]</a>
				</li>
				<li component="blocks/no-users" class="hidden">
					<a href="#" class="dropdown-item role="menuitem">[[users:no-users-found]]</a>
				</li>
				{{{ each edit }}}
				<li component="blocks/search/match">
					<div class="dropdown-item d-flex flex-nowrap gap-2 justify-content-between" role="menuitem">
						<div class="text-truncate">
							<a href="{config.relative_path}/uid/{../uid}">{buildAvatar(edit, "24px", true)} {../username}</a>
						</div>

						<button class="btn btn-sm btn-outline-danger text-nowrap {{{ if ./isBlocked }}}hidden{{{ end }}}" data-uid="{./uid}" data-action="block">[[user:block-user]]</button>
						<button class="btn btn-sm btn-outline-primary text-nowrap {{{ if !./isBlocked }}}hidden{{{ end }}}" data-uid="{./uid}" data-action="unblock">[[user:unblock-user]]</button>
					</div>
				</li>
				{{{ end }}}
			</ul>
		</div>
	</div>
</div>

<div class="users row">
	<div id="users-container" class="users-container list-unstyled d-flex flex-wrap gap-2">
		{{{ each users }}}
		<div class="d-flex flex-column gap-1">
			<!-- IMPORT partials/users/item.tpl -->
			<button class="btn btn-sm btn-outline-primary text-nowrap mx-auto" data-uid="{./uid}" data-action="unblock">[[user:unblock-user]]</button>
		</div>
		{{{ end }}}

		<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has-no-blocks]]</div>
		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
