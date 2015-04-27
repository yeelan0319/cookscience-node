<div class="account-username-box" data-userslug="{userData.userslug}" data-uid="{userData.uid}">
	<ul class="nav nav-pills account-sub-links">
		<li>
			<div class="btn-group">
				<a href="{config.relative_path}/user/{userData.userslug}" class="btn btn-primary" id="profile"><i class="fa fa-user"></i> [[user:profile]]</a>
				<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<ul class="dropdown-menu pull-right" role="menu">
					<li><a href="{config.relative_path}/user/{userData.userslug}/following"><i class="fa fa-fw fa-users"></i> [[user:following]]</a></li>
					<li><a href="{config.relative_path}/user/{userData.userslug}/followers"><i class="fa fa-fw fa-users"></i> [[user:followers]]</a></li>
					<li class="divider"></li>
					<li><a href="{config.relative_path}/user/{userData.userslug}/topics"><i class="fa fa-fw fa-book"></i> [[global:topics]]</a></li>
					<li><a href="{config.relative_path}/user/{userData.userslug}/posts"><i class="fa fa-fw fa-pencil"></i> [[global:posts]]</a></li>
					<li><a href="{config.relative_path}/user/{userData.userslug}/groups"><i class="fa fa-fw fa-users"></i> [[global:header.groups]]</a></li>
					<!-- IF showHidden -->
					<li><a href="{config.relative_path}/user/{userData.userslug}/favourites"><i class="fa fa-fw fa-heart"></i> [[user:favourites]]</a></li>
					<li><a href="{config.relative_path}/user/{userData.userslug}/watched"><i class="fa fa-fw fa-eye"></i> [[user:watched]]</a></li>
					<!-- ENDIF showHidden -->
					<!-- BEGIN profile_links -->
					<li id="{userData.profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userData.userslug}/{userData.profile_links.route}"><i class="fa fa-fw {userData.profile_links.icon}"></i> {userData.profile_links.name}</a></li>
					<!-- END profile_links -->
				</ul>
			</div>
		</li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userData.userslug}/settings"><i class="fa fa-gear"></i> [[user:settings]]</a></li>
		<li><a href="{config.relative_path}/user/{userData.userslug}/edit"><i class="fa fa-pencil-square-o"></i> [[user:edit]]</a></li>
		<!-- ENDIF showHidden -->
	</ul>
</div>

<div class="account">
	<div class="row">
		<div class="col-md-2" style="text-align: center; margin-bottom:20px;">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture img-thumbnail" src="{userData.picture}" /><br /><br />
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

					<div class="control-group">
						<label class="control-label" for="inputUsername">[[user:username]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{userData.username}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputEmail">[[user:email]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputEmail" placeholder="[[user:email]]" value="{userData.email}">
						</div>

					</div>

					<div class="control-group">
						<label class="control-label" for="inputFullname">[[user:fullname]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{userData.fullname}">
						</div>
					</div>

					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{userData.signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<div class="control-group">
						<label class="control-label" for="inputInstitution">Institution</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputInstitution" placeholder="Enter institution name" value="{userData.institution}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputLab">Research Group</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputLab" placeholder="Enter research lab" value="{userData.lab}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Discipline</label>
						<div class="controls row">
							<!-- BEGIN categories -->
							<label class="col-xs-6">
								<!-- IF !categories.checked -->
						      	<input type="checkbox" name="discipline_group[]" value="{categories.cid}" /> {categories.name}
						      	<!-- ELSE -->
						      	<input type="checkbox" name="discipline_group[]" value="{categories.cid}" checked/> {categories.name}
						      	<!-- ENDIF !categories.checked -->
						    </label>
							<!-- END categories -->
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="checkbox" name="receiveAd" checked="{userData.receiveAd}" /> I would like to receive vendor promotion information
						</div>
					</div>

					<input type="hidden" id="inputUID" value="{userData.uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>

				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5">
			<div style="vertical-align:top;">
				<form class='form-horizontal'>
					<!-- IF isSelf -->
					<div class="control-group">
						<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
						<div class="controls">
							<input class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
						</div>
					</div>
					<!-- ENDIF isSelf -->

					<div class="control-group">
						<label class="control-label" for="inputNewPassword">[[user:password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
							<span class="input-group-addon">
								<span id="password-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
							<span class="input-group-addon">
								<span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
					<br/>
					<div class="form-actions">
						<a id="changePasswordBtn" href="#" class="btn btn-primary"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_password]]</a>
					</div>

				</form>
			</div>
		</div>
	</div>

	<div id="change-picture-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="[[user:change_picture]]" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">[[user:change_picture]]</h3>
				</div>
				<div class="modal-body">
					<div id="gravatar-box">
						<img id="user-gravatar-picture" src="" class="img-thumbnail user-profile-picture">
						<span class="user-picture-label">[[user:gravatar]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>
					<br/>
					<div id="uploaded-box">
						<img id="user-uploaded-picture" src="" class="img-thumbnail user-profile-picture">
						<span class="user-picture-label">[[user:uploaded_picture]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>

					<a id="uploadPictureBtn" href="#">[[user:upload_new_picture]]</a> <br/>
					<!-- IF config.hasImageUploadPlugin -->
					<a id="uploadFromUrlBtn" href="#">[[user:upload_new_picture_from_url]]</a>
					<!-- ENDIF config.hasImageUploadPlugin -->
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">[[global:close]]</button>
					<button id="savePictureChangesBtn" class="btn btn-primary">[[global:save_changes]]</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<div id="upload-picture-from-url-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="Upload Picture From Url" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>[[user:upload_picture]]</h3>
				</div>
				<div class="modal-body">
					<input id="uploadFromUrl" class="form-control" type="text"/>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
					<button class="btn btn-primary upload-btn">[[user:upload_picture]]</button>
				</div>
			</div>
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{userData.yourid}" />
<input type="hidden" template-variable="theirid" value="{userData.theirid}" />
<input type="hidden" template-variable="userslug" value="{userData.userslug}" />
<input type="hidden" template-variable="gravatarpicture" value="{userData.gravatarpicture}" />
<input type="hidden" template-variable="uploadedpicture" value="{userData.uploadedpicture}" />