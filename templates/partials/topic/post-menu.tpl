<div class="dropdown moderator-tools">
	<a href="#" data-toggle="dropdown"><i class="fa fa-fw fa-ellipsis-v"></i></a>
	<ul class="dropdown-menu dropdown-menu-right" role="menu">

		<!-- IF posts.display_moderator_tools -->
		<li role="presentation" class="dropdown-header">[[topic:tools]]</li>
		<li role="presentation">
			<a component="post/edit" role="menuitem" tabindex="-1" href="#">
				<span class="menu-icon"><i class="fa fa-pencil"></i></span> [[topic:edit]]
			</a>
		</li>
		<li role="presentation">
			<a component="post/delete" role="menuitem" tabindex="-1" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->">
				<div class="inline menu-icon"><i class="fa fa-trash-o"></i></div> <span>[[topic:delete]]</span>
			</a>
		</li>
		<li role="presentation">
			<a component="post/restore" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
				<div class="inline menu-icon"><i class="fa fa-history"></i></div> <span>[[topic:restore]]</span>
			</a>
		</li>
		<li role="presentation">
			<a component="post/purge" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
				<span class="menu-icon"><i class="fa fa-eraser"></i></span> [[topic:purge]]
			</a>
		</li>
		<!-- IF posts.display_move_tools -->
		<li role="presentation">
			<a component="post/move" role="menuitem" tabindex="-1" href="#">
				<span class="menu-icon"><i class="fa fa-arrows"></i></span> [[topic:move]]
			</a>
		</li>
		<!-- ENDIF posts.display_move_tools -->
		<li role="presentation" class="divider"></li>
		<!-- ENDIF posts.display_moderator_tools -->

		<li role="presentation">
			<a component="post/favourite" role="menuitem" tabindex="-1" href="#" data-favourited="{posts.favourited}">

				<span class="favourite-text">[[topic:favourite]]</span>
				<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;

				<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
				<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
			</a>
		</li>

		<!-- IF !config.disableSocialButtons -->
		<li role="presentation" class="divider"></li>
		<li role="presentation" class="dropdown-header">[[topic:share_this_post]]</li>
		<li role="presentation">
			<a role="menuitem" class="facebook-share" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-facebook"></i></span> Facebook</a>
		</li>
		<li role="presentation">
			<a role="menuitem" class="twitter-share" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-twitter"></i></span> Twitter</a>
		</li>
		<li role="presentation">
			<a role="menuitem" class="google-share" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-google-plus"></i></span> Google+</a>
		</li>
		<!-- ENDIF !config.disableSocialButtons -->

		<li role="presentation" class="divider"></li>

		<!-- IF !posts.selfPost -->
		<li role="presentation">
			<a component="post/flag" role="menuitem" tabindex="-1" href="#">
				[[topic:flag_title]]
			</a>
		</li>
		<!-- ENDIF !posts.selfPost -->
	</ul>
</div>