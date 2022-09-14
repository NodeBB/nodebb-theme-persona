<div class="dropdown">
  <button class="btn btn-link p-2 text-muted align-text-top" data-bs-toggle="dropdown" component="chat/controlsToggle"><i class="fa fa-gear"></i></button>
  <ul class="dropdown-menu dropdown-menu-end" component="chat/controls">
    <li class="dropdown-header">[[modules:chat.options]]</li>
    <li>
      <a class="dropdown-item" href="#" data-action="members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
    </li>
    <li>
      <a class="dropdown-item" href="#" data-action="rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
    </li>
    <li>
      <a class="dropdown-item" href="#" data-action="leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
    </li>
    <!-- IF users.length -->
    <li role="separator" class="dropdown-divider"></li>
    <li class="dropdown-header">[[modules:chat.in-room]]</li>
    {{{each users}}}
    <li>
      <a class="dropdown-item" href="{config.relative_path}/uid/{../uid}">{buildAvatar(users, "24px", true)} {../username}</a>
    </li>
    {{{end}}}
    <!-- END -->
  </ul>
</div>
