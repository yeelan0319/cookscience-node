<div class="row">
	<div class="well">
		<h2>Thank you for confirming your email!</h2>
		<h4>Please help us complete your information</h4>
		<div class="col-xs-12 userinfo-container">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="institution" class="col-lg-2 control-label">Institution</label>
					<div class="col-lg-5">
						<input class="form-control" type="text" placeholder="Enter research institution" name="institution" id="inputInstitution" autocorrect="off" autocapitalize="off" />
					</div>
				</div>
				<div class="form-group">
					<label for="lab" class="col-lg-2 control-label">Research group</label>
					<div class="col-lg-5">
						<input class="form-control" type="text" placeholder="Enter research group" name="lab" id="inputLab" autocorrect="off" autocapitalize="off" />
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="col-lg-2 control-label">Discipline</label>
					<div class="col-lg-10 row">
						<!-- BEGIN categories -->
						<label class="col-xs-6 col-md-3">
					      	<input type="checkbox" name="discipline_group[]" value="{categories.cid}" /> {categories.name}
					    </label>
						<!-- END categories -->
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-offset-2 col-xs-10">
				      	<input type="checkbox" name="receiveAd" checked="true" /> I would like to receive vendor promotion information
				    </label>
				</div>
				<input type="hidden" id="inputUID" value="{uid}"><br />
				<div class="form-group">
					<div class="pull-right col-xs-12 col-lg-2">
						<button class="btn btn-primary btn-block" id="submit" type="submit">Submit</button>
					</div>
				</div>
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
</div>