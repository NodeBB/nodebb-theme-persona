<!-- IMPORT partials/account/header.tpl -->
<h1>[[pages:account/blocks, {username}]]</h1>
<div class="row justify-content-end mb-2">
	<div class="col-3">
		<div class="dropdown">
			<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" data-bs-toggle="dropdown" autocomplete="off"/>

			<ul class="dropdown-menu block-edit list-unstyled">
				<li><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
				{{{ each edit }}}
				<li class="">
					<div class="dropdown-item d-flex flex-nowrap gap-2 justify-content-between">
						<div class="text-truncate">
							<a href="{config.relative_path}/uid/{../uid}">{buildAvatar(edit, "24px", true)} {../username}</a>
						</div>
						<button class="btn btn-sm btn-primary text-nowrap" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
					</div>
				</li>
				{{{ end }}}
			</ul>
		</div>
	</div>
</div>

<div class="users row">
	<div class="col-12">
		<!-- IMPORT partials/users_list.tpl -->
		<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
		<!-- IMPORT partials/paginator.tpl -->
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
