<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="row">
	<div class="col-xs-12 col-md-9">
		<div class="well well-lg">
			<div class="alert alert-danger" id="register-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>[[error:registration-error]]</strong>
				<p>{error}</p>
			</div>
			<form class="form-horizontal" role="form" action="{relative_path}/register" method="post">
				<div class="form-group">
					<label for="email" class="col-lg-4 control-label">[[register:email_address]]</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="[[register:email_address_placeholder]]" name="email" id="email" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="email-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="col-lg-4 control-label">[[register:username]]</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="[[register:username_placeholder]]" name="username" id="username" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="username-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="fullname" class="col-lg-4 control-label">[[user:fullname]]</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="[[register:username_placeholder]]" name="fullname" id="fullname" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="fullname-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="col-lg-4 control-label">[[register:password]]</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="password" placeholder="[[register:password_placeholder]]" name="password" id="password" />
							<span class="input-group-addon">
								<span id="password-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password-confirm" class="col-lg-4 control-label">[[register:confirm_password]]</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="password" placeholder="[[register:confirm_password_placeholder]]" name="password-confirm" id="password-confirm" />
							<span class="input-group-addon">
								<span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="institution" class="col-lg-4 control-label">Institution</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="Enter research institution" name="institution" id="institution" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="institution-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="lab" class="col-lg-4 control-label">Research group</label>
					<div class="col-lg-8">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="Enter research group" name="lab" id="lab" autocorrect="off" autocapitalize="off" />
							<span class="input-group-addon">
								<span id="lab-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="discipline" class="col-lg-4 control-label">Discipline</label>
					<div class="col-lg-8 row">
						<!-- BEGIN categories -->
						<label class="col-xs-12 col-md-6">
					      	<input type="checkbox" name="discipline[]" value="{categories.cid}" /> {categories.name}
					    </label>
						<!-- END categories -->
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-offset-4 col-lg-8">
				      	<input type="checkbox" name="receiveAd" checked="true" /> I would like to receive vendor promotion information
				    </label>
				</div>
				<!-- BEGIN regFormEntry -->
				<div class="form-group">
					<label for="register-{regFormEntry.styleName}" class="col-lg-3 control-label">{regFormEntry.label}</label>
					<div id="register-{regFormEntry.styleName}" class="col-lg-9">
						{regFormEntry.html}
					</div>
				</div>
				<!-- END regFormEntry -->

				<!-- IF termsOfUse -->
				<div class="form-group">
					<label class="col-lg-4 control-label">&nbsp;</label>
					<div class="col-lg-8">
						<hr />
						<strong>[[register:terms_of_use]]</strong>
						<textarea readonly class="form-control" rows=6>{termsOfUse}</textarea>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="agree-terms" id="agree-terms"> [[register:agree_to_terms_of_use]]
							</label>
						</div>
					</div>
				</div>
				<!-- ENDIF termsOfUse -->
				<div class="form-group">
					<div class="col-lg-offset-4 col-lg-8">
						<hr />
						<button class="btn btn-primary btn-lg btn-block" id="register" type="submit">[[register:register_now_button]]</button>
					</div>
				</div>
				<input id="referrer" type="hidden" name="referrer" value="" />
			</form>
		</div>
	</div>

	<!-- IF alternate_logins -->
	<div class="col-xs-12 col-md-3">
		<div class="well well-lg">
			<h4>[[register:alternative_registration]]</h4>
			<ul class="alt-logins">
				<!-- BEGIN authentication -->
				<li class="{authentication.name}"><a rel="nofollow" target="_top" href="{relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-3x"></i></i></a></li>
				<!-- END authentication -->
			</ul>
		</div>
	</div>
	<!-- ENDIF alternate_logins -->
</div>
