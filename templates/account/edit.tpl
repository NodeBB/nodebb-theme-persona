
<!-- IMPORT partials/account_menu.tpl -->

<div class="account">
	<div class="row">
		<div class="col-md-2">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture" src="{picture}" /><br /><br />
				<a id="changePictureBtn" href="#" class="btn btn-primary">[[user:change_picture]]</a>
				<br/><br/>
				<!-- IF config.allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF config.allowAccountDelete -->
				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF isSelf -->
				<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a>
				<!-- ENDIF isSelf -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->
			</div>
		</div>

		<div class="col-md-5">
			<div>
				<form class='form-horizontal'>

					<!-- IF !username:disableEdit -->
					<div class="control-group">
						<label class="control-label" for="inputUsername">[[user:username]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{username}">
						</div>
					</div>
					<!-- ENDIF !username:disableEdit -->

					<div class="control-group">
						<label class="control-label" for="inputEmail">[[user:email]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputEmail" placeholder="[[user:email]]" value="{email}">
						</div>

					</div>

					<div class="control-group">
						<label class="control-label" for="inputFullname">[[user:fullname]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputWebsite">[[user:website]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputLocation">[[user:location]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputBirthday">[[user:birthday]]</label>
						<div class="controls">
							<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="yyyy-mm-dd">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
						</div>
					</div>
					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<input type="hidden" id="inputUID" value="{uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>

				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5">
			<form class='form-horizontal'>
				<!-- IF isSelf -->
				<div class="control-group">
					<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
					<div class="controls">
						<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
					</div>
				</div>
				<!-- ENDIF isSelf -->

				<div class="control-group">
					<label class="control-label" for="inputNewPassword">[[user:password]]</label>
					<div class="input-group">
						<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
						<span class="input-group-addon">
							<span id="password-notify"><span class="success hide"><i class="fa fa-check"></i></span><span class="error hide"></span><span class="default"><i class="fa fa-circle-o"></i></span></span>
						</span>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
					<div class="input-group">
						<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
						<span class="input-group-addon">
							<span id="password-confirm-notify"><span class="success hide"><i class="fa fa-check"></i></span><span class="error hide"></span><span class="default"><i class="fa fa-circle-o"></i></span></span>
						</span>
					</div>
				</div>
				<br/>
				<div class="form-actions">
					<a id="changePasswordBtn" href="#" class="btn btn-primary"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_password]]</a>
				</div>
			</form>

			<hr />

			<label class="control-label">[[user:sso.title]]</label>
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
	</div>

	<!-- IMPORT partials/modals/change_picture_modal.tpl -->
	<!-- IMPORT partials/modals/upload_picture_from_url_modal.tpl -->
</div>

