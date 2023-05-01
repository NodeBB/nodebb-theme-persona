{{{ if privileges.editable }}}
<li <!-- IF locked -->hidden<!-- ENDIF locked -->><a component="topic/lock" href="#" class="dropdown-item <!-- IF locked -->hidden<!-- ENDIF locked -->"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
<li <!-- IF !locked -->hidden<!-- ENDIF !locked -->><a component="topic/unlock" href="#" class="dropdown-item <!-- IF !locked -->hidden<!-- ENDIF !locked -->"><i class="fa fa-fw fa-unlock"></i> [[topic:thread_tools.unlock]]</a></li>
<li <!-- IF pinned -->hidden<!-- ENDIF pinned -->><a component="topic/pin" href="#" class="dropdown-item <!-- IF pinned -->hidden<!-- ENDIF pinned -->"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
<li <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->><a component="topic/unpin" href="#" class="dropdown-item <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"><i class="fa fa-fw fa-thumb-tack fa-rotate-90"></i> [[topic:thread_tools.unpin]]</a></li>

<li><a component="topic/move" class="dropdown-item" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
<li><a component="topic/merge" class="dropdown-item" href="#"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.merge]]</a></li>
<li><a component="topic/fork" class="dropdown-item" href="#"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.fork]]</a></li>
<li><a component="topic/tag" class="dropdown-item" href="#"><i class="fa fa-fw fa-tag"></i> [[topic:thread_tools.tag]]</a></li>
{{{ if !scheduled }}}
<li><a component="topic/move-posts" class="dropdown-item" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move-posts]]</a></li>
{{{ end }}}
<li><a component="topic/mark-unread-for-all" class="dropdown-item" href="#"><i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
<li class="dropdown-divider"></li>
{{{ end }}}

<!-- IF privileges.deletable -->
<li <!-- IF deleted -->hidden<!-- ENDIF deleted -->><a component="topic/delete" href="#" class="dropdown-item <!-- IF deleted -->hidden<!-- ENDIF deleted -->"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</a></li>
{{{ if !scheduled }}}
<li <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->><a component="topic/restore" href="#" class="dropdown-item <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><i class="fa fa-fw fa-history"></i> [[topic:thread_tools.restore]]</a></li>
{{{ end }}}
<!-- IF privileges.purge -->
<li <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->><a component="topic/purge" href="#" class="dropdown-item <!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]</a></li>
<!-- END -->
<!-- IF privileges.isAdminOrMod -->
<li><a component="topic/delete/posts" class="dropdown-item" href="#"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete-posts]]</a></li>
<!-- ENDIF privileges.isAdminOrMod -->

{{{each thread_tools}}}
<li><a href="#" class="dropdown-item {thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a></li>
{{{end}}}
<!-- ENDIF privileges.deletable -->