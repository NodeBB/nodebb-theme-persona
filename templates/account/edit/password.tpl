<div class="account">
	<!-- IMPORT partials/account_menu.tpl -->
	
	<div class="row">
		<div class="col-md-2 col-sm-4">
			<div class="account-picture-block text-center">
				<div class="row">
					<div class="col-xs-12">
						<!-- IF picture -->
						<img id="user-current-picture" class="user-profile-picture" src="{picture}" />
						<!-- ELSE -->
						<div class="user-icon user-profile-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
						<!-- ENDIF picture -->
					</div>
				</div>
				<ul class="list-group">
					<a id="changePictureBtn" href="#" class="list-group-item">[[user:change_picture]]</a>
					<!-- IF !username:disableEdit -->
					<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item">[[user:change_username]]</a>
					<!-- ENDIF !username:disableEdit -->
					<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item">[[user:change_email]]</a>
					<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item">[[user:change_password]]</a>
				</ul>

				<!-- IF config.requireEmailConfirmation -->
				<!-- IF email -->
				<!-- IF isSelf -->
				<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF email -->
				<!-- ENDIF config.requireEmailConfirmation -->

				<!-- IF config.allowAccountDelete -->
				<!-- IF isSelf -->
				<a id="deleteAccountBtn" href="#" class="btn btn-danger">[[user:delete_account]]</a><br/><br/>
				<!-- ENDIF isSelf -->
				<!-- ENDIF config.allowAccountDelete -->

			</div>
		</div>

		<div class="col-md-5 col-sm-4">
			<div>
				<form class='form-horizontal'>
				<!-- disables autocomplete on FF -->
				<input type="password" style="display:none">

				<!-- IF isSelf -->
				<div class="control-group">
					<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
					<div class="controls">
						<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword -->>
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
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5 col-sm-4">
			<!-- IF sso.length -->
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
			<!-- ENDIF sso.length -->
		</div>
	</div>
</div>

