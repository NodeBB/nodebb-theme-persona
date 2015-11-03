<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="profile row">
		<h1 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h1>
		<h2 class="username">@{username}</h2>
		<!-- IF aboutme -->
		<span component="aboutme" class="text-center aboutme">{aboutme}</span>
		<!-- ENDIF aboutme -->
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

			<div id="banLabel" class="text-center <!-- IF !banned -->hide<!-- ENDIF !banned -->">
				<span class="label label-danger">[[user:banned]]</span>
			</div>

			
			<hr/>
			<div class="text-center account-stats">

				<!-- IF reputation -->
				<div class="inline-block text-center">
					<span class="human-readable-number" title="{reputation}">{reputation}</span>
					<span class="account-bio-label">[[global:reputation]]</span>
				</div>
				<!-- ENDIF reputation -->

				<div class="inline-block text-center">
					<span class="human-readable-number" title="{postcount}">{postcount}</span>
					<span class="account-bio-label">[[global:posts]]</span>
				</div>

				<div class="inline-block text-center">
					<span class="human-readable-number" title="{profileviews}">{profileviews}</span>
					<span class="account-bio-label">[[user:profile_views]]</span>
				</div>

				<div class="inline-block text-center">
					<span class="human-readable-number" title="{followerCount}">{followerCount}</span>
					<span class="account-bio-label">[[user:followers]]</span>
				</div>

				<div class="inline-block text-center">
				<span class="human-readable-number"  title="{followingCount}">{followingCount}</span>
					<span class="account-bio-label">[[user:following]]</span>
				</div>
			</div>

			<div class="hidden">
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
