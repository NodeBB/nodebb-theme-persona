<!-- IMPORT partials/account_menu.tpl -->

<div class="account">

	<div class="row">
		<div class="col-md-5 account-block">

			<div class="account-picture-block panel panel-default">
				<div class="panel-body">
					<div class="text-center">
						<img src="{picture}" class="user-profile-picture" />
					</div>

					<div>
						<div class="text-center">
							<span>
								<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
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
								<span class="human-readable-number" title="{postcount}">{postcount}</span>
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

					<!-- IF websiteName -->
					<span class="account-bio-label">[[user:website]]</span>
					<span class="account-bio-value"><a href="{website}">{websiteName}</a></span>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<span class="account-bio-label">[[user:location]]</span>
					<span class="account-bio-value">{location}</span>
					<!-- ENDIF location -->

					<!-- IF age -->
					<span class="account-bio-label">[[user:age]]</span>
					<span class="account-bio-value">{age}</span>
					<!-- ENDIF age -->


					<span class="account-bio-label">[[user:followers]]</span>
					<span class="human-readable-number account-bio-value" title="{followerCount}">{followerCount}</span>

					<span class="account-bio-label">[[user:following]]</span>
					<span class="human-readable-number account-bio-value"  title="{followingCount}">{followingCount}</span>

					<span class="account-bio-label">[[user:joined]]</span>
					<span class="timeago account-bio-value" title="{joindate}"></span>

					<span class="account-bio-label">[[user:lastonline]]</span>
					<span class="timeago account-bio-value" title="{lastonline}"></span>

					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<span class="account-bio-label">[[user:signature]]</span>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
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

			<!-- IF ips.length -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentips]]</h3>
				</div>
				<div class="panel-body">
				<!-- BEGIN ips -->
					<div>{ips.ip}</div>
				<!-- END ips -->
				</div>
			</div>
			<!-- ENDIF ips.length -->

		</div>

		<div class="col-md-7">
		<!-- IF !posts.length -->
		<span>[[user:has_no_posts]]</span>
		<!-- ENDIF !posts.length -->
		<!-- IMPORT partials/posts_list.tpl -->
		</div>

	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>

<!-- IMPORT partials/variables/account.tpl -->
<!-- IMPORT partials/variables/account/profile.tpl -->