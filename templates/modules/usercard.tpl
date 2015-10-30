<div class="persona-usercard">
	<a href="{config.relative_path}/user/{userslug}">
		<!-- IF picture -->
		<div class="usercard-picture" style="background-image:url({picture})"></div>
		<!-- ELSE -->
		<div class="usercard-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
		<!-- ENDIF picture -->
	</a>
	<div class="usercard-body">
		<a href="{config.relative_path}/user/{userslug}">
			<span class="usercard-name"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span><br />
			<span class="usercard-username">@{username}</span>
		</a>

		<div class="row usercard-info">
			<div class="col-xs-4">
				<small>Posts</small>
				<span class="human-readable-number">{postcount}</span>
			</div>
			<div class="col-xs-4">
				<small>Reputation</small>
				<span class="human-readable-number">{reputation}</span>
			</div>
			
			<button class="btn-morph fab plus">
				<span>
					<span class="s1"></span>
					<span class="s2"></span>
					<span class="s3"></span>
				</span>
			</button>
		</div>
	</div>
</div>