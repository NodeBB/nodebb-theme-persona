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

	<div class="d-flex justify-content-end gap-2">
		<button class="btn btn-link text-danger" type="button" data-action="delete">[[groups:details.delete-group]]</button>
		<button class="btn btn-primary" type="button" data-action="update">[[global:save-changes]]</button>
	</div>
</form>