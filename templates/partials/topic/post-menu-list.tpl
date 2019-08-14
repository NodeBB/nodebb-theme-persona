<!-- IF posts.display_moderator_tools -->
<li role="presentation" class="dropdown-header">[[topic:tools]]</li>
<li role="presentation">
	<a component="post/edit" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-pencil"></i></span> [[topic:edit]]
	</a>
</li>
<li role="presentation" <!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->>
	<a component="post/delete" role="menuitem" tabindex="-1" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->">
		<div class="inline menu-icon"><i class="fa fa-fw fa-trash-o"></i></div> <span>[[topic:delete]]</span>
	</a>
</li>
<li role="presentation" <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->>
	<a component="post/restore" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<div class="inline menu-icon"><i class="fa fa-fw fa-history"></i></div> <span>[[topic:restore]]</span>
	</a>
</li>
<!-- IF posts.display_purge_tools -->
<li role="presentation" <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->>
	<a component="post/purge" role="menuitem" tabindex="-1" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<span class="menu-icon"><i class="fa fa-fw fa-eraser"></i></span> [[topic:purge]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_history -->
<li role="presentation">
	<a component="post/view-history" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-history"></i></span> [[topic:view-history]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_move_tools -->
<li role="presentation">
	<a component="post/move" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-arrows"></i></span> [[topic:move]]
	</a>
</li>
<!-- ENDIF posts.display_move_tools -->

<!-- IF posts.display_change_owner_tools -->
<li role="presentation">
	<a component="post/change-owner" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-user"></i></span> [[topic:change-owner]]
	</a>
</li>
<!-- ENDIF posts.display_change_owner_tools -->

<!-- IF posts.ip -->
<li role="presentation">
	<a component="post/copy-ip" role="menuitem" tabindex="-1" href="#" data-clipboard-text="{posts.ip}">
		<span class="menu-icon" ><i class="fa fa-fw fa-copy"></i></span> [[topic:copy-ip]] {posts.ip}
	</a>
</li>
<!-- IF posts.display_ip_ban -->
<li role="presentation">
	<a component="post/ban-ip" role="menuitem" tabindex="-1" href="#" data-ip="{posts.ip}">
		<span class="menu-icon"><i class="fa fa-fw fa-ban"></i></span> [[topic:ban-ip]] {posts.ip}
	</a>
</li>
<!-- ENDIF posts.display_ip_ban -->
<!-- ENDIF posts.ip -->
<!-- ENDIF posts.display_moderator_tools -->

{{{each posts.tools}}}
<li role="presentation">
	<a component="{posts.tools.action}" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw {posts.tools.icon}"></i></span> {{posts.tools.html}}
	</a>
</li>
{{{end}}}
<!-- IF posts.toolsVisible -->
<li role="presentation" class="divider"></li>
<!-- ENDIF posts.toolsVisible -->

<!-- IF !posts.deleted -->
<!-- IF config.loggedIn -->
<li role="presentation">
	<a component="post/bookmark" role="menuitem" tabindex="-1" href="#" data-bookmarked="{posts.bookmarked}">

		<span class="bookmark-text">[[topic:bookmark]]</span>
		<span component="post/bookmark-count" class="bookmarkCount" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;

		<i component="post/bookmark/on" class="fa fa-fw fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
		<i component="post/bookmark/off" class="fa fa-fw fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
	</a>
</li>
<!-- ENDIF config.loggedIn -->

<!-- IF postSharing.length -->
<li role="presentation" class="divider"></li>
<li role="presentation" class="dropdown-header">[[topic:share_this_post]]</li>
<!-- ENDIF postSharing.length -->
{{{each postSharing}}}
	<li role="presentation">
		<a role="menuitem" component="share/{postSharing.id}" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-fw {postSharing.class}"></i></span> {postSharing.name}</a>
	</li>
{{{end}}}

<!-- IF posts.display_flag_tools -->
<li role="presentation" class="divider"></li>
<li role="presentation">
	<a component="post/flag" role="menuitem" tabindex="-1" href="#">
		[[topic:flag_title]]
	</a>
</li>
<!-- ENDIF posts.display_flag_tools -->
<!-- ENDIF !posts.deleted -->