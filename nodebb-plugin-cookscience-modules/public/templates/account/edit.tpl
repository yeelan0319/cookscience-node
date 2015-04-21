

<div class="account-username-box" data-userslug="{userslug}" data-uid="{uid}">
	<ul class="nav nav-pills account-sub-links">
		<li>
			<div class="btn-group">
				<a href="{config.relative_path}/user/{userslug}" class="btn btn-primary" id="profile"><i class="fa fa-user"></i> [[user:profile]]</a>
				<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
					<span class="sr-only">Toggle Dropdown</span>
				</button>
				<ul class="dropdown-menu pull-right" role="menu">
					<li><a href="{config.relative_path}/user/{userslug}/following"><i class="fa fa-fw fa-users"></i> [[user:following]]</a></li>
					<li><a href="{config.relative_path}/user/{userslug}/followers"><i class="fa fa-fw fa-users"></i> [[user:followers]]</a></li>
					<li class="divider"></li>
					<li><a href="{config.relative_path}/user/{userslug}/topics"><i class="fa fa-fw fa-book"></i> [[global:topics]]</a></li>
					<li><a href="{config.relative_path}/user/{userslug}/posts"><i class="fa fa-fw fa-pencil"></i> [[global:posts]]</a></li>
					<li><a href="{config.relative_path}/user/{userslug}/groups"><i class="fa fa-fw fa-users"></i> [[global:header.groups]]</a></li>
					<!-- IF showHidden -->
					<li><a href="{config.relative_path}/user/{userslug}/favourites"><i class="fa fa-fw fa-heart"></i> [[user:favourites]]</a></li>
					<li><a href="{config.relative_path}/user/{userslug}/watched"><i class="fa fa-fw fa-eye"></i> [[user:watched]]</a></li>
					<!-- ENDIF showHidden -->
					<!-- BEGIN profile_links -->
					<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a href="{config.relative_path}/user/{userslug}/{profile_links.route}"><i class="fa fa-fw {profile_links.icon}"></i> {profile_links.name}</a></li>
					<!-- END profile_links -->
				</ul>
			</div>
		</li>
		<!-- IF showHidden -->
		<li><a href="{config.relative_path}/user/{userslug}/settings"><i class="fa fa-gear"></i> [[user:settings]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/edit"><i class="fa fa-pencil-square-o"></i> [[user:edit]]</a></li>
		<!-- ENDIF showHidden -->
	</ul>
</div>

<div class="account">
	<div class="row">
		<div class="col-md-2" style="text-align: center; margin-bottom:20px;">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture img-thumbnail" src="{picture}" /><br /><br />
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
							<input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{username}">
						</div>
					</div>

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

					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<div class="control-group">
						<label class="control-label" for="inputInstitution">Institution</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputInstitution" placeholder="Enter institution name" value="{institution}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputLab">Research Group</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputLab" placeholder="Enter research lab" value="{lab}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Discipline</label>
						<div class="controls">
							<div class="row">
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="1" /> Animal Techniques
							    </label>
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="2" /> Biochecmistry
							    </label>
						    </div>
						    <div class="row">
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="3" /> Bioinformatics & Biostatistics
							    </label>
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="4" /> Cell Biology
							    </label>
							</div>
							<div class="row">
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="5" /> Developmental Biology
							    </label>
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="6" /> Essential Data
							    </label>
							</div>
						    <div class="row">
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="7" /> General Lab Techniques
							    </label>
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="8" /> Genetics & Genomics
							    </label>
							</div>
							<div class="row">
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="9" /> Histology
							    </label>
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="10" /> Imaging Techniques
							    </label>
							</div>
						    <div class="row">
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="11" /> Immuology
							    </label>
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="12" /> Media & Solutions
							    </label>
							</div>
							<div class="row">
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="13" /> Microbiology
							    </label>
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="14" /> Model Organisms
							    </label>
							</div>
						    <div class="row">
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="15" /> Molecular Biology
							    </label>
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="16" /> Neuroscience
							    </label>
							</div>
							<div class="row">
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="17" /> Physiology
							    </label>
								<label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="18" /> Plant Biology
							    </label>
							</div>
						    <div class="row">
							    <label class="col-xs-6">
							      	<input type="checkbox" name="discipline_group[]" value="19" /> Research Tools
							    </label>
							</div>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="checkbox" name="receiveAd" checked="{receiveAd}" /> I would like to receive vendor promotion information
						</div>
					</div>

					<input type="hidden" id="inputUID" value="{uid}"><br />

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

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="userslug" value="{userslug}" />
<input type="hidden" template-variable="gravatarpicture" value="{gravatarpicture}" />
<input type="hidden" template-variable="uploadedpicture" value="{uploadedpicture}" />