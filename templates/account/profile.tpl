<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="profile row">
		<h1 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h1>
		<h2 class="username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></h2>
		<!-- IF aboutme -->
		<span component="aboutme" class="text-center aboutme">{aboutme}</span>
		<!-- ENDIF aboutme -->

		<div class="account-stats">
			<!-- IF reputation -->
			<div class="stat">
				<div class="human-readable-number" title="{reputation}">{reputation}</div>
				<span class="stat-label">[[global:reputation]]</span>
			</div>
			<!-- ENDIF reputation -->

			<div class="stat">
				<div class="human-readable-number" title="{postcount}">{postcount}</div>
				<span class="stat-label">[[global:posts]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
				<span class="stat-label">[[user:profile_views]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number" title="{followerCount}">{followerCount}</div>
				<span class="stat-label">[[user:followers]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number"  title="{followingCount}">{followingCount}</div>
				<span class="stat-label">[[user:following]]</span>
			</div>
		</div>
	</div>

	
	<hr />

	<div class="row">
		<div class="col-xs-12 account-block hidden">
			<div class="account-picture-block text-center">
				<span>
					<span class="account-username"> {username}</span>
				</span>

				<!-- IF !isSelf -->
				<!-- IF isFollowing -->
				<a component="account/unfollow" href="#" class="btn btn-warning btn-sm">[[user:unfollow]]</a>
				<!-- ELSE -->
				<a component="account/follow" href="#" class="btn btn-success btn-sm">[[user:follow]]</a>
				<!-- ENDIF isFollowing -->
				<!-- ENDIF !isSelf -->

			</div>
		

			<div class="hidden">
				<!-- IF email -->
				<span class="account-bio-label">[[user:email]]</span>
				<span class="account-bio-value"><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</span>
				<!-- ENDIF email -->

				<!-- IF websiteName -->
				<span class="account-bio-label">[[user:website]]</span>
				<span class="account-bio-value"><a href="{websiteLink}" rel="nofollow">{websiteName}</a></span>
				<!-- ENDIF websiteName -->

				<!-- IF location -->
				<span class="account-bio-label">[[user:location]]</span>
				<span class="account-bio-value">{location}</span>
				<!-- ENDIF location -->

				<!-- IF age -->
				<span class="account-bio-label">[[user:age]]</span>
				<span class="account-bio-value">{age}</span>
				<!-- ENDIF age -->

				<span class="account-bio-label">[[user:joined]]</span>
				<span class="timeago account-bio-value" title="{joindate}"></span>

				<span class="account-bio-label">[[user:lastonline]]</span>
				<span class="timeago account-bio-value" title="{lastonline}"></span>
			</div>

			<!-- IF groups.length -->
			<div class="hidden">
				<!-- BEGIN groups -->
				<a href="{config.relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
				<!-- END groups -->
			</div>
			<!-- ENDIF groups.length -->
			<br /><br />

			<!-- IF ips.length -->
			<div class="hidden">
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

		<h1>[[pages:account/posts, {username}]]</h1>

		<div class="col-xs-12">
		<!-- IF !posts.length -->
		<div class="alert alert-warning">[[user:has_no_posts]]</div>
		<!-- ENDIF !posts.length -->
		<!-- IMPORT partials/posts_list.tpl -->
		</div>

	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>
