<!-- IF posts.display_moderator_tools -->
<li>
	<a class="dropdown-item" component="post/edit" role="menuitem" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-pencil"></i></span> [[topic:edit]]
	</a>
</li>
<li <!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->>
	<a class="dropdown-item" component="post/delete" role="menuitem" href="#" class="<!-- IF posts.deleted -->hidden<!-- ENDIF posts.deleted -->">
		<span class="menu-icon"><i class="fa fa-fw fa-trash-o"></i><span> [[topic:delete]]
	</a>
</li>
<li <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->>
	<a class="dropdown-item" component="post/restore" role="menuitem" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<span class="menu-icon"><i class="fa fa-fw fa-history"></i><span> [[topic:restore]]
	</a>
</li>
<!-- IF posts.display_purge_tools -->
<li <!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->>
	<a class="dropdown-item" component="post/purge" role="menuitem" href="#" class="<!-- IF !posts.deleted -->hidden<!-- ENDIF !posts.deleted -->">
		<span class="menu-icon"><i class="fa fa-fw fa-eraser"></i></span> [[topic:purge]]
	</a>
</li>
<!-- END -->

<!-- IF posts.display_move_tools -->
<li>
	<a class="dropdown-item" component="post/move" role="menuitem" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-arrows"></i></span> [[topic:move]]
	</a>
</li>
<!-- ENDIF posts.display_move_tools -->

<!-- IF posts.display_change_owner_tools -->
<li>
	<a class="dropdown-item" component="post/change-owner" role="menuitem" href="#">
		<span class="menu-icon"><i class="fa fa-fw fa-user"></i></span> [[topic:change-owner]]
	</a>
</li>
<!-- ENDIF posts.display_change_owner_tools -->

<!-- IF posts.ip -->
<li>
	<a class="dropdown-item" component="post/copy-ip" role="menuitem" href="#" data-clipboard-text="{posts.ip}">
		<span class="menu-icon" ><i class="fa fa-fw fa-copy"></i></span> [[topic:copy-ip]] {posts.ip}
	</a>
</li>
<!-- IF posts.display_ip_ban -->
<li>
	<a class="dropdown-item" component="post/ban-ip" role="menuitem" href="#" data-ip="{posts.ip}">
		<span class="menu-icon"><i class="fa fa-fw fa-ban"></i></span> [[topic:ban-ip]] {posts.ip}
	</a>
</li>
<!-- ENDIF posts.display_ip_ban -->
<!-- ENDIF posts.ip -->
<!-- ENDIF posts.display_moderator_tools -->

{{{each posts.tools}}}
<li {{{ if ./disabled }}}class="disabled" {{{ end }}}>
	<a class="dropdown-item" {{{ if ./action}}}component="{./action}"{{{ end }}} role="menuitem" href="{{{ if ./href }}}{./href}{{{ else }}}#{{{ end }}}">
		<span class="menu-icon"><i class="fa fa-fw {posts.tools.icon}"></i></span> {{posts.tools.html}}
	</a>
</li>
{{{end}}}

<!-- IF !posts.deleted -->
	<!-- IF posts.display_history -->
	<li>
		<a class="dropdown-item" component="post/view-history" role="menuitem" href="#">
			<span class="menu-icon"><i class="fa fa-fw fa-history"></i></span> [[topic:view-history]]
		</a>
	</li>
	<!-- END -->

	{{{ if config.loggedIn }}}
	<li>
		<a class="dropdown-item" component="post/bookmark" role="menuitem" href="#" data-bookmarked="{posts.bookmarked}">
			<span class="menu-icon">
				<i component="post/bookmark/on" class="fa fa-fw fa-heart <!-- IF !posts.bookmarked -->hidden<!-- ENDIF !posts.bookmarked -->"></i>
				<i component="post/bookmark/off" class="fa fa-fw fa-heart-o <!-- IF posts.bookmarked -->hidden<!-- ENDIF posts.bookmarked -->"></i>
			</span>
			<span class="bookmark-text">[[topic:bookmark]]</span>
			<span component="post/bookmark-count" class="bookmarkCount badge" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
		</a>
	</li>
	{{{ end }}}

	<li>
		<a class="dropdown-item" role="menuitem" href="#" data-clipboard-text="{posts.absolute_url}">
			<i class="fa fa-fw fa-link"></i> [[topic:copy-permalink]]
		</a>
	</li>

	<!-- IF postSharing.length -->
	<!-- IF config.loggedIn --><li class="dropdown-divider"></li><!-- ENDIF config.loggedIn -->
	<li class="dropdown-header">[[topic:share-this-post]]</li>
	<!-- ENDIF postSharing.length -->
	<li class="d-flex gap-2 px-3">
		{{{ each postSharing }}}
		<a class="dropdown-item rounded-1 d-flex align-items-center px-1 py-2 w-auto" role="menuitem" component="share/{./id}" href="#" title="{./name}"><i class="fa-fw text-muted {./class}"></i></a>
		{{{ end }}}
	</li>
<!-- ENDIF !posts.deleted -->

{{{ if posts.display_flag_tools }}}
<li class="dropdown-divider"></li>

<li {{{ if posts.flags.flagged }}}hidden{{{ end }}}>
	<a class="dropdown-item" component="post/flag" role="menuitem" href="#"><i class="fa fa-fw fa-flag"></i> [[topic:flag-post]]</a>
</li>
<li {{{ if !posts.flags.flagged }}}hidden{{{ end }}} class="disabled text-muted">
	<a class="dropdown-item" component="post/already-flagged" role="menuitem" href="#"><i class="fa fa-fw fa-flag"></i> [[topic:already-flagged]]</a>
</li>

{{{ if (!posts.selfPost && posts.uid) }}}
<li>
	<a class="dropdown-item" component="post/flagUser" role="menuitem" href="#"><i class="fa fa-fw fa-flag"></i> [[topic:flag-user]]</a>
</li>
{{{ end }}}
{{{ end }}}

<!-- IF posts.display_moderator_tools -->
{{{ if posts.flags.exists }}}
<li>
	<a class="dropdown-item" role="menuitem" href="{config.relative_path}/flags/{posts.flags.flagId}"><i class="fa fa-fw fa-exclamation-circle"></i> [[topic:view-flag-report]]</a>
</li>
{{{ if (posts.flags.state == "open") }}}
<li>
	<a class="dropdown-item" component="post/flagResolve" data-flagId="{posts.flags.flagId}" role="menuitem" href="#"><i class="fa fa-fw fa-check"></i> [[topic:resolve-flag]]</a>
</li>
{{{ end }}}
{{{ end }}}
<!-- ENDIF posts.display_moderator_tools -->
