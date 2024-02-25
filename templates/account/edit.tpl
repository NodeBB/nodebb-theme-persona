<!-- IMPORT partials/account/header.tpl -->
<!-- IF sso.length --><div><!-- ENDIF sso.length -->
	<div class="row">
		<div class="col-md-3 col-sm-4">
			<div class="account-picture-block text-center">
				<div class="row mb-3">
					<div class="col-12 hidden-xs">
						<!-- IF picture -->
						<img id="user-current-picture" class="avatar avatar-rounded" style="--avatar-size: 128px;" src="{picture}" />
						<!-- ELSE -->
						<div class="avatar avatar-rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;">{icon:text}</div>
						<!-- ENDIF picture -->
					</div>
				</div>
				<ul class="list-group mb-3">
					{{{ if allowProfilePicture }}}
					<li class="list-group-item"><a component="profile/change/picture" href="#" class="text-decoration-none text-reset">[[user:change-picture]]</a></li>
					{{{ end }}}
					{{{ if !username:disableEdit }}}
					<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/username" class="text-decoration-none text-reset">[[user:change-username]]</a></li>
					{{{ end }}}
					{{{ if !email:disableEdit }}}
					<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/email" class="text-decoration-none text-reset">[[user:change-email]]</a></li>
					{{{ end }}}
					{{{ if canChangePassword }}}
					<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/password" class="text-decoration-none text-reset">[[user:change-password]]</a></li>
					{{{ end }}}
					{{{ each editButtons }}}
					<li class="list-group-item"><a href="{config.relative_path}{./link}" class="text-decoration-none text-reset">{./text}</a></li>
					{{{ end }}}
				</ul>

				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF isSelf -->
				<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm-email]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->

				<!-- IF allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete-account]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF allowAccountDelete -->

			</div>
		</div>

		<div class="<!-- IF !sso.length -->col-md-9 col-sm-8<!-- ELSE -->col-md-5 col-sm-4<!-- ENDIF !sso.length -->">
			<form role="form" component="profile/edit/form">
				<div class="mb-2">
					<label class="form-label fw-bold" for="fullname">[[user:fullname]]</label>
					<input class="form-control" type="text" id="fullname" name="fullname" placeholder="[[user:fullname]]" value="{fullname}">
				</div>
				<!-- IF allowWebsite -->
				<div class="mb-2">
					<label class="form-label fw-bold" for="website">[[user:website]]</label>
					<input class="form-control" type="text" id="website" name="website" placeholder="http://..." value="{website}">
				</div>
				<!-- ENDIF allowWebsite -->

				<div class="mb-2">
					<label class="form-label fw-bold" for="location">[[user:location]]</label>
					<input class="form-control" type="text" id="location" name="location" placeholder="[[user:location]]" value="{location}">
				</div>

				<div class="mb-2">
					<label class="form-label fw-bold" for="birthday">[[user:birthday]]</label>
					<input class="form-control" type="date" id="birthday" name="birthday" value="{birthday}" placeholder="mm/dd/yyyy">
				</div>

				<div class="mb-2">
					<label class="form-label fw-bold" for="groupTitle">[[user:grouptitle]]</label>

					<div class="d-flex flex-column gap-2" component="group/badge/list">
						{{{ each groups }}}
						<div component="group/badge/item" class="d-flex gap-2 justify-content-between align-items-center" data-value="{./displayName}" data-selected="{./selected}">
							<!-- IMPORT partials/groups/badge.tpl -->
							<div class="d-flex gap-1">
								<button component="group/toggle/hide" type="button" class="btn-ghost-sm {{{ if !./selected }}}hidden{{{ end }}}" title="[[user:hide-group-title]]"><i class="fa fa-fw fa-eye"></i></button>
								<button component="group/toggle/show" type="button" class="btn-ghost-sm {{{ if ./selected }}}hidden{{{ end }}}" title="[[user:show-group-title]]"><i class="fa fa-fw fa-eye-slash"></i></button>
								{{{ if allowMultipleBadges }}}
								<button component="group/order/up" type="button" class="btn-ghost-sm" title="[[user:order-group-up]]"><i class="fa fa-fw fa-chevron-up"></i></button>
								<button component="group/order/down" type="button" class="btn-ghost-sm" title="[[user:order-group-down]]"><i class="fa fa-fw fa-chevron-down"></i></button>
								{{{ end }}}
							</div>
						</div>
						{{{ end }}}
					</div>
				</div>

				<!-- IF allowAboutMe -->
				<div class="mb-2">
					<label class="form-label fw-bold" for="aboutme">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
					<textarea class="form-control" id="aboutme" name="aboutme" rows="5">{aboutme}</textarea>
				</div>
				<!-- ENDIF allowAboutMe -->

				<!-- IF allowSignature -->
				<!-- IF !disableSignatures -->
				<div class="mb-2">
					<label class="form-label fw-bold" for="signature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
					<textarea class="form-control" id="signature" name="signature" rows="5">{signature}</textarea>
				</div>
				<!-- ENDIF !disableSignatures -->
				<!-- ENDIF allowSignature -->

				<a id="submitBtn" href="#" class="btn btn-primary">[[global:save-changes]]</a>
			</form>

			<hr class="visible-xs visible-sm"/>
		</div>

		<!-- IF sso.length -->
		<div class="col-md-4 col-sm-4">
			<label>[[user:sso.title]]</label>
			<div class="list-group">
				{{{each sso}}}
				<div class="list-group-item">
					<!-- IF ../deauthUrl -->
					<a data-component="{../component}" class="btn btn-outline-secondary btn-sm float-end" href="{../deauthUrl}">[[user:sso.dissociate]]</a>
					<!-- END -->
					<a data-component="{../component}" href="{{{ if ./url }}}{./url}{{{ else }}}#{{{ end }}}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
						<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
						<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
						{../name}
					</a>
				</div>
				{{{end}}}
			</div>
		</div>
		<!-- ENDIF sso.length -->
	</div>
<!-- IF sso.length --></div><!-- ENDIF sso.length -->

<!-- IMPORT partials/account/footer.tpl -->