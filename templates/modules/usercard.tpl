<div class="persona-usercard">
	<!-- IF picture -->
	<div class="usercard-picture" style="background-image:url({picture})"></div>
	<!-- ELSE -->
	<div class="usercard-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
	<!-- ENDIF picture -->
	<div class="usercard-body">
		<span class="usercard-name"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span><br />
		<span class="usercard-username">@{username}</span><br />

		<div class="row usercard-info">
			<div class="col-xs-4">
				<small>Posts</small>
				{postcount}
			</div>
			<div class="col-xs-4">
				<small>Reputation</small>
				{reputation}
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