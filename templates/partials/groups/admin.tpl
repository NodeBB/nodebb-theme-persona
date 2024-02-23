<div class="card mb-3">
	<div class="card-header">
		<div class="fs-5">
			<i class="fa fa-clock-o"></i> [[groups:details.pending]]
			<!-- IF group.pending.length -->
			<div class="btn-group float-end">
				<button type="button" class="btn btn-outline-secondary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					[[global:more]] <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a class="dropdown-item" href="#" data-action="acceptAll" role="menuitem">[[groups:pending.accept-all]]</a></li>
					<li><a class="dropdown-item" href="#" data-action="rejectAll" role="menuitem">[[groups:pending.reject-all]]</a></li>
				</ul>
			</div>
			<!-- ENDIF group.pending.length -->
		</div>
	</div>
	<div class="card-body">
		<div component="groups/pending/alert" class="alert alert-info {{{ if group.pending.length }}}hidden{{{ end }}}">[[groups:pending.none]]</div>

		<table component="groups/pending" class="table table-striped table-hover">
			<tbody>
				{{{each group.pending}}}
				<tr data-uid="{group.pending.uid}">
					<td class="p-2">
						<a href="{config.relative_path}/user/{group.pending.userslug}">{buildAvatar(group.pending, "24px", true)}</a>
					</td>
					<td class="member-name p-2">
						<a href="{config.relative_path}/user/{group.pending.userslug}">{group.pending.username}</a>
					</td>
					<td class="p-2">
						<div class="btn-group float-end">
							<button type="button" class="btn btn-outline-secondary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								[[global:more]] <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a class="dropdown-item" href="#" data-action="accept" role="menuitem">[[groups:pending.accept]]</a></li>
								<li><a class="dropdown-item" href="#" data-action="reject" role="menuitem">[[groups:pending.reject]]</a></li>
							</ul>
						</div>
					</td>
				</tr>
				{{{end}}}
			</tbody>
		</table>
	</div>
</div>
<div class="card mb-3">
	<div class="card-header">
		<span class="fs-5">
			<i class="fa fa-gift"></i> [[groups:details.invited]]
		</span>
	</div>
	<div class="card-body">
		<div class="input-group mb-2">
			<input class="form-control" type="text" component="groups/members/invite" placeholder="[[groups:invited.search]]"/>
			<span class="input-group-text search-button"><i class="fa fa-search"></i></span>
		</div>

		<div class="mb-2">
			<textarea class="form-control" component="groups/members/bulk-invite" placeholder="[[groups:bulk-invite-instructions]]"></textarea>
		</div>

		<div class="mb-2 clearfix">
			<button class="btn btn-outline-secondary btn-sm float-end" component="groups/members/bulk-invite-button">[[groups:bulk-invite]]</button>
		</div>

		<div component="groups/invited/alert" class="alert alert-info {{{ if group.invited.length }}}hidden{{{ end }}}">[[groups:invited.none]]</div>

		<table component="groups/invited" class="table table-striped table-hover">
			<tbody>
				{{{ each group.invited }}}
				<tr data-uid="{group.invited.uid}">
					<td class="p-2">
						<a href="{config.relative_path}/user/{group.invited.userslug}">{buildAvatar(group.invited, "24px", true)}</a>
					</td>
					<td class="member-name p-2">
						<a href="{config.relative_path}/user/{group.invited.userslug}">{group.invited.username}</a>
					</td>
					<td class="p-2">
						<div class="btn-group float-end">
							<button type="button" class="btn btn-outline-secondary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								[[global:more]] <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a class="dropdown-item" href="#" data-action="rescindInvite" role="menuitem">[[groups:invited.uninvite]]</a></li>
							</ul>
						</div>
					</td>
				</tr>
				{{{end}}}
			</tbody>
		</table>
	</div>
</div>

<div class="card mb-3">
	<div class="card-header pointer" data-bs-toggle="collapse" data-bs-target=".options">
		<span class="fs-5">
			<i class="fa fa-caret-down float-end"></i>
			<i class="fa fa-cogs"></i> [[groups:details.owner-options]]
		</span>
	</div>

	<div class="card-body options collapse">
		<form component="groups/settings" role="form">
			<div class="mb-3">
				<label class="form-label" for="name">[[groups:details.group-name]]</label>
				<input <!-- IF group.system -->readonly<!-- ENDIF group.system --> class="form-control" name="name" id="name" type="text" value="{group.displayName}" />
			</div>
			<div class="mb-3">
				<label class="form-label" for="description">[[groups:details.description]]</label>
				<textarea class="form-control" name="description" id="description" type="text" maxlength="255">{group.description}</textarea>
			</div>

			<hr />
			<div class="mb-3">
				<label class="form-label" for="memberPostCids">[[groups:details.member-post-cids]]</label>
				<div class="row">
					<div class="col-md-6">
						<input id="memberPostCids" type="text" class="form-control" value="{group.memberPostCids}">
					</div>
					<div class="col-md-6 member-post-cids-selector">
						<!-- IMPORT partials/category/selector-dropdown-left.tpl -->
					</div>
				</div>
			</div>

			<hr />

			<div class="mb-3 user-title-option">
				<label class="form-label" for="userTitle">[[groups:details.badge-text]]</label>
				<div class="d-flex gap-2">
					<input component="groups/userTitleOption" class="form-control" name="userTitle" id="userTitle" type="text" maxlength="40" value="{group.userTitleEscaped}"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled --> />
					<button component="groups/userTitleOption" type="button" class="btn btn-outline-secondary btn-sm text-nowrap" data-action="icon-select"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled -->>[[groups:details.change-icon]]</button>
				</div>
			</div>

			<div class="mb-3 user-title-option">
				<div class="d-flex align-items-center gap-3">
					<label class="form-label mb-0">[[groups:details.badge-preview]]</label>
					<span class="badge rounded-1 text-uppercase text-truncate rounded-1 {{{ if !group.userTitleEnabled }}} hide{{{ end }}}" style="max-width:150px; color: {group.textColor}; background-color: {group.labelColor}"><i class="fa{{{ if group.icon }}} {group.icon}{{{ if group.userTitle}}} me-1{{{ end }}}{{{ end }}}"></i><span class="badge-text">{{{ if group.userTitle }}}{group.userTitle}{{{ end }}}</span></span>
				</div>
				<hr/>
				<div class="d-flex flex-column gap-2">
					<div class="d-flex align-items-center gap-2">
						<label class="form-label mb-0" for="labelColor" class="badge-color-label">[[groups:details.change-label-colour]]</label>
						<input component="groups/userTitleOption" type="color" name="labelColor" id="labelColor"  value="<!-- IF group.labelColor -->{group.labelColor}<!-- ENDIF group.labelColor -->" />
					</div>
					<div class="d-flex align-items-center gap-2">
						<label class="form-label mb-0" for="textColor" class="badge-color-label">[[groups:details.change-text-colour]]</label>
						<input component="groups/userTitleOption" type="color" name="textColor" id="textColor" value="<!-- IF group.textColor -->{group.textColor}<!-- ENDIF group.textColor -->" />
					</div>
					<input type="hidden" name="icon" value="<!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" />
				</div>
				<div id="icons" class="hidden">
					<div class="icon-container">
						<div class="row nbb-fa-icons">
							<!-- IMPORT partials/fontawesome.tpl -->
						</div>
					</div>
				</div>
			</div>
			<hr />
			<div class="form-check">
				<label class="form-check-label" for="userTitleEnabled">[[groups:details.userTitleEnabled]]</label>
				<input class="form-check-input" name="userTitleEnabled" id="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled -->>
			</div>
			<div class="form-check">
				<label class="form-check-label" for="private">[[groups:details.private]]</label>
				<input class="form-check-input" name="private" id="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private -->>
				<!-- IF !allowPrivateGroups -->
				<p class="form-text">
					[[groups:details.private-system-help]]
				</p>
				<!-- ENDIF !allowPrivateGroups -->
				<p class="form-text">
					[[groups:details.private-help]]
				</p>
			</div>
			<div class="form-check">
				<label class="form-check-label" for="disableJoinRequests">[[groups:details.disableJoinRequests]]</label>
				<input class="form-check-input" name="disableJoinRequests" id="disableJoinRequests" type="checkbox"<!-- IF group.disableJoinRequests --> checked<!-- ENDIF group.disableJoinRequests -->>
			</div>
			<div class="form-check">
				<label class="form-check-label" for="disableLeave">[[groups:details.disableLeave]]</label>
				<input class="form-check-input" name="disableLeave" id="disableLeave" type="checkbox"{{{if group.disableLeave}}} checked{{{end}}}>
			</div>
			<div class="form-check">
				<label class="form-check-label" for="hidden">[[groups:details.hidden]]</label>
				<input class="form-check-input" name="hidden" id="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden -->>
				<p class="form-text">
					[[groups:details.hidden-help]]
				</p>
			</div>

			<button class="btn btn-link text-danger float-end" type="button" data-action="delete">[[groups:details.delete-group]]</button>
			<button class="btn btn-primary" type="button" data-action="update">[[global:save-changes]]</button>
		</form>
	</div>
</div>