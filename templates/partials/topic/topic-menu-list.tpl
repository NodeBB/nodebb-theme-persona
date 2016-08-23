<!-- IF privileges.editable -->
<li class="dropdown-item"><a component="topic/mark-unread-for-all" href="#"><i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
<li class="dropdown-item"><a component="topic/pin" href="#" class="<!-- IF pinned -->hidden<!-- ENDIF pinned -->"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
<li class="dropdown-item"><a component="topic/unpin" href="#" class="<!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"><i class="fa fa-fw fa-thumb-tack fa-rotate-90"></i> [[topic:thread_tools.unpin]]</a></li>
<li class="dropdown-item"><a component="topic/lock" href="#" class="<!-- IF locked -->hidden<!-- ENDIF locked -->"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
<li class="dropdown-item"><a component="topic/unlock" href="#" class="<!-- IF !locked -->hidden<!-- ENDIF !locked -->"><i class="fa fa-fw fa-unlock"></i> [[topic:thread_tools.unlock]]</a></li>
<div class="dropdown-divider"></div>
<li class="dropdown-item"><a component="topic/move" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
<li class="dropdown-item"><a component="topic/fork" href="#"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.fork]]</a></li>
<div class="dropdown-divider"></div>
<!-- ENDIF privileges.editable -->

<!-- IF privileges.deletable -->
<li class="dropdown-item"><a component="topic/delete" href="#" class="<!-- IF deleted -->hidden<!-- ENDIF deleted -->"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</a></li>
<li class="dropdown-item"><a component="topic/restore" href="#" class="<!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><i class="fa fa-fw fa-history"></i> [[topic:thread_tools.restore]]</a></li>
<li class="dropdown-item"><a component="topic/purge" href="#" class="<!-- IF !deleted -->hidden<!-- ENDIF !deleted -->"><i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]</a></li>
<!-- IF privileges.isAdminOrMod -->
<li class="dropdown-item"><a component="topic/delete/posts" href="#"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete-posts]]</a></li>
<!-- ENDIF privileges.isAdminOrMod -->

<!-- BEGIN thread_tools -->
<li class="dropdown-item"><a href="#" class="{thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a></li>
<!-- END thread_tools -->
<!-- ENDIF privileges.deletable -->