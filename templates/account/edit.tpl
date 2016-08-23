<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<!-- IF sso.length --><div><!-- ENDIF sso.length -->
		<div class="row">
			<div class="col-lg-2 col-md-4">
				<div class="account-picture-block text-xs-center">
					<div class="row">
						<div class="col-sm-12 hidden-sm-down">
							<!-- IF picture -->
							<img id="user-current-picture" class="avatar avatar-lg avatar-rounded" src="{picture}" />
							<!-- ELSE -->
							<div class="avatar avatar-lg avatar-rounded" style="background-color: {icon:bgColor};">{icon:text}</div>
							<!-- ENDIF picture -->
						</div>
					</div>
					<ul class="list-group m-b-2">
						<a id="changePictureBtn" href="#" class="list-group-item">[[user:change_picture]]</a>
						<!-- IF !username:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item">[[user:change_username]]</a>
						<!-- ENDIF !username:disableEdit -->
						<!-- IF !email:disableEdit -->
						<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item">[[user:change_email]]</a>
						<!-- ENDIF !email:disableEdit -->
						<!-- IF canChangePassword -->
						<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item">[[user:change_password]]</a>
						<!-- ENDIF canChangePassword -->
						<!-- BEGIN editButtons -->
						<a href="{config.relative_path}{editButtons.link}" class="list-group-item">{editButtons.text}</a>
						<!-- END editButtons -->
					</ul>

					<!-- IF config.requireEmailConfirmation -->
					<!-- IF email -->
					<!-- IF isSelf -->
					<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a><br/><br/>
					<!-- ENDIF isSelf -->
					<!-- ENDIF email -->
					<!-- ENDIF config.requireEmailConfirmation -->

					<!-- IF allowAccountDelete -->
					<!-- IF isSelf -->
					<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a><br/><br/>
					<!-- ENDIF isSelf -->
					<!-- ENDIF allowAccountDelete -->

				</div>
			</div>

			<div class="<!-- IF !sso.length -->col-lg-9 col-md-8<!-- ELSE -->col-lg-5 col-md-4<!-- ENDIF !sso.length -->">
				<div>
					<form class='form-horizontal'>

						<div class="form-group row">
							<label class="form-control-label" for="inputFullname">[[user:fullname]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label" for="inputWebsite">[[user:website]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label" for="inputLocation">[[user:location]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label" for="inputBirthday">[[user:birthday]]</label>
							<div class="controls">
								<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="mm/dd/yyyy">
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label" for="grouptitle">[[user:grouptitle]]</label>
							<div class="controls">
								<select class="form-control" id="groupTitle" data-property="groupTitle">
									<option value="">[[user:no-group-title]]</option>
									<!-- BEGIN groups -->
									<!-- IF groups.userTitleEnabled -->
									<option value="{groups.name}" <!-- IF groups.selected -->selected<!-- ENDIF groups.selected -->>{groups.userTitle}</option>
									<!-- ENDIF groups.userTitleEnabled -->
									<!-- END groups -->
								</select>
							</div>
						</div>

						<div class="form-group row">
							<label class="form-control-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
							</div>
						</div>
						<!-- IF !disableSignatures -->
						<div class="form-group row">
							<label class="form-control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
							</div>
						</div>
						<!-- ENDIF !disableSignatures -->

						<input type="hidden" id="inputUID" value="{uid}">

						<div class="form-actions">
							<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
						</div>

					</form>
				</div>

				<hr class="hidden-lg-up"/>
			</div>

			<!-- IF sso.length -->
			<div class="col-lg-5 col-md-4">
				<label class="form-control-label">[[user:sso.title]]</label>
				<div class="list-group">
					<!-- BEGIN sso -->
					<a class="list-group-item" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
						<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
						<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
						{../name}
					</a>
					<!-- END sso -->
				</div>
			</div>
			<!-- ENDIF sso.length -->
		</div>
	<!-- IF sso.length --></div><!-- ENDIF sso.length -->
</div>