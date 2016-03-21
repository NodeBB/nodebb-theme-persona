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

<!-- BEGIN posts.tools -->
<li role="presentation">
	<a component="{posts.tools.action}" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa {posts.tools.icon}"></i></span> {{posts.tools.html}}
	</a>
</li>
<!-- END posts.tools -->

<!-- IF posts.display_move_tools -->
<li role="presentation">
	<a component="post/move" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-arrows"></i></span> [[topic:move]]
	</a>
</li>
<!-- ENDIF posts.display_move_tools -->
<li role="presentation" class="divider"></li>
<!-- ENDIF posts.display_moderator_tools -->

<!-- IF !posts.deleted -->
<!-- IF config.loggedIn -->
<li role="presentation">
	<a component="post/favourite" role="menuitem" tabindex="-1" href="#" data-favourited="{posts.favourited}">

		<span class="favourite-text">[[topic:favourite]]</span>
		<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;

		<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
		<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
	</a>
</li>
<!-- ENDIF config.loggedIn -->

<!-- IF postSharing.length -->
<li role="presentation" class="divider"></li>
<li role="presentation" class="dropdown-header">[[topic:share_this_post]]</li>
<!-- ENDIF postSharing.length -->
<!-- BEGIN postSharing -->
	<li role="presentation">
		<a role="menuitem" component="share/{postSharing.id}" tabindex="-1" href="#"><span class="menu-icon"><i class="fa {postSharing.class}"></i></span> {postSharing.name}</a>
	</li>
<!-- END postSharing -->

<!-- IF config.loggedIn -->
<!-- IF !posts.selfPost -->
<li role="presentation" class="divider"></li>
<li role="presentation">
	<a component="post/flag" role="menuitem" tabindex="-1" href="#">
		[[topic:flag_title]]
	</a>
</li>
<!-- ENDIF !posts.selfPost -->
<!-- ENDIF config.loggedIn -->
<!-- ENDIF !posts.deleted -->