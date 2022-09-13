<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row">
		<h1>[[pages:account/blocks, {username}]]</h1>

		<div class="col-sm-8 col-12">
			<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
				<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
			<!-- IMPORT partials/paginator.tpl -->
		</div>
		<div class="col-sm-4 col-12">
			<div class="card">
				<div class="card-body form">
					<div class="">
						<label class="form-label" for="user-search">[[users:search]]</label>
						<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" />
						<ul class="block-edit list-group">
							{{{ each edit }}}
							<li class="list-group-item clearfix">
								<button class="btn btn-sm btn-primary float-end" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
								<div class="float-start">
									<a href="{config.relative_path}/uid/{../uid}">{buildAvatar(edit, "24px", true)} {../username}</a>
								</div>
							</li>
							{{{ end }}}
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>