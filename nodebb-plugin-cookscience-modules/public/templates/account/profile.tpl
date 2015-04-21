
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
		<div class="col-md-5 account-block">

			<div class="account-picture-block panel panel-default">
				<div class="panel-body">
					<div class="text-center">
						<img src="{picture}" class="user-profile-picture img-thumbnail" />
					</div>

					<div>
						<div class="text-center">
							<span>
								<i class="account-online-status fa fa-circle status {status}" title="[[global:{status}]]"></i>
								<span class="account-username"> {username}</span>
							</span>

							<!-- IF !isSelf -->
							<br/>
							<!-- IF !config.disableChat -->
							<a id="chat-btn" href="#" class="btn btn-primary btn-sm">[[user:chat]]</a>
							<!-- ENDIF !config.disableChat -->
 							<a id="follow-btn" href="#" class="btn btn-success btn-sm <!-- IF isFollowing -->hide<!-- ENDIF isFollowing -->">[[user:follow]]</a>
 							<a id="unfollow-btn" href="#" class="btn btn-warning btn-sm <!-- IF !isFollowing -->hide<!-- ENDIF !isFollowing -->">[[user:unfollow]]</a>
							<!-- ENDIF !isSelf -->
						</div>

						<!-- IF banned -->
						<div class="text-center">
							<span class="label label-danger">[[user:banned]]</span>
						</div>
						<!-- ENDIF banned -->
						<hr/>
						<div class="text-center account-stats">

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{reputation}">{reputation}</span>
								<span class="account-bio-label">[[global:reputation]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{protocolsCount}">{protocolsCount}</span>
								<span class="account-bio-label">[[global:posts]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{profileviews}">{profileviews}</span>
								<span class="account-bio-label">[[user:profile_views]]</span>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="panel panel-default">
				<div class="panel-body text-center">

					<!-- IF email -->
					<span class="account-bio-label">[[user:email]]</span>
					<span class="account-bio-value"><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</span>
					<!-- ENDIF email -->

					<!-- IF fullname -->
					<span class="account-bio-label">[[user:fullname]]</span>
					<span class="account-bio-value">{fullname}</span>
					<!-- ENDIF fullname -->

					<!-- IF institution -->
					<span class="account-bio-label">Institution</span>
					<span class="account-bio-value">{institution}</span>
					<!-- ENDIF institution -->

					<!-- IF lab -->
					<span class="account-bio-label">Research Group</span>
					<span class="account-bio-value">{lab}</span>
					<!-- ENDIF lab -->
				</div>
			</div>

			<!-- IF groups.length -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[groups:groups]]</h3>
				</div>
				<div class="panel-body">
				<!-- BEGIN groups -->
					<a href="{relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
				<!-- END groups -->
				</div>
			</div>
			<!-- ENDIF groups.length -->

		</div>


		<div class="col-md-7 user-recent-posts" data-nextstart="{nextStart}">
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentposts]]</h3>
				</div>
				<div class="panel-body">
					<!-- IF !protocols.length -->
					<span>[[user:has_no_posts]]</span>
					<!-- ENDIF !protocols.length -->
					<!-- BEGIN protocols -->
					<div class="user-post clearfix" data-pid="{protocols.pid}">
						<div class="content">
							<a href="{relative_path}/topic/{protocols.topic.slug}/{protocols.index}"><h4>{protocols.topic.title}</h4></a>
							<p>{protocols.content.purpose}</p>
							<p class="fade-out"></p>
						</div>
						<small>
							<span class="pull-right post-preview-footer">
								[[global:posted_in_ago, <a href="{relative_path}/category/{protocols.category.slug}"><i class="fa {protocols.category.icon}"></i> {protocols.category.name}</a>, <span class="timeago" title="{protocols.relativeTime}"></span>]] &bull;
							</span>
						</small>
					</div>
					<hr/>
					<!-- END protocols -->
					<div class="loading-indicator text-center hidden">
						<i class="fa fa-refresh fa-spin"></i>
					</div>
				</div>
			</div>

		</div>
	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-type="boolean" template-variable="isFollowing" value="{isFollowing}" />