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
	<a component="post/bookmark" role="menuitem" tabindex="-1" href="#" data-bookmarked="{posts.bookmarked}">

		<span class="bookmark-text">[[topic:bookmark]]</span>
		<span component="post/bookmark-count" class="bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;

		<i component="post/bookmark/on" class="fa fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
		<i component="post/bookmark/off" class="fa fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
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

<!-- IF posts.display_flag_option -->
<li role="presentation" class="divider"></li>
<li role="presentation">
	<a component="post/flag" role="menuitem" tabindex="-1" href="#">
		[[topic:flag_title]]
	</a>
</li>
<!-- ENDIF posts.display_flag_option -->
<!-- ENDIF !posts.deleted -->
