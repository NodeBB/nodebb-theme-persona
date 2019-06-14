<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<h2>[[pages:account/blocks, {username}]]</h2>
	<div class="users row">
		<div class="col-sm-8 col-xs-12">
			<ul id="users-container" class="users-container" data-nextstart="{nextStart}">
				<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<div class="alert alert-warning text-center"<!-- IF users.length --> style="display: none;"<!-- END -->>[[user:has_no_blocks]]</div>
			<!-- IMPORT partials/paginator.tpl -->
		</div>
		<div class="col-sm-4 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-body form">
					<div class="form-group">
						<label for="user-search">[[users:search]]</label>
						<input class="form-control" type="text" id="user-search" placeholder="[[users:enter_username]]" />
						<div class="block-edit">
							{{{ each edit }}}
							<hr />
							<button class="btn btn-sm btn-primary pull-right" data-uid="{../uid}" data-action="toggle">[[user:block_toggle]]</button>
							<div class="pull-left">
								<a href="{config.relative_path}/uid/{../uid}">{buildAvatar(edit, "sm", true)} {../username}</a>
							</div>
							{{{ end }}}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>