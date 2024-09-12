{{{ if config.loggedIn }}}
<div class="btn-group bottom-sheet" component="topic/watch"
data-bs-toggle="tooltip"
	{{{if isFollowing}}}title="[[topic:watching]]"{{{end}}}
	{{{if isNotFollowing}}}title="[[topic:not-watching]]"{{{end}}}
	{{{if isIgnoring}}}title="[[topic:ignoring]]"{{{end}}}
>
	<button class="btn btn-sm btn-ghost dropdown-toggle text-secondary" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
		<span component="topic/following/menu" <!-- IF !isFollowing -->class="hidden"<!-- ENDIF !isFollowing -->><i class="fa fa-fw fa-bell-o"></i></span>

		<span component="topic/not-following/menu" <!-- IF !isNotFollowing -->class="hidden"<!-- ENDIF !isNotFollowing -->><i class="fa fa-fw fa-bell-slash-o"></i></span>

		<span component="topic/ignoring/menu" <!-- IF !isIgnoring -->class="hidden"<!-- ENDIF !isIgnoring -->><i class="fa fa-fw fa-eye-slash"></i></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end p-1 text-sm" role="menu">
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/following" role="menuitem">
				<div class="flex-grow-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2">
						<i class="flex-shrink-0 fa fa-fw fa-bell-o text-secondary"></i>
						<span class="flex-grow-1 fw-semibold">[[topic:watching]]</span>
					</span>
					<div class="help-text text-secondary text-xs">[[topic:watching.description]]</div>
				</div>
				<span class="flex-shrink-0"><i component="topic/following/check" class="fa fa-fw {{{ if isFollowing }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>

		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/not-following" role="menuitem">
				<div class="flex-grow-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2">
						<i class="flex-shrink-0 fa fa-fw fa-bell-slash-o text-secondary"></i>
						<span class="flex-grow-1 fw-semibold">[[topic:not-watching]]</span>
					</span>
					<div class="help-text text-secondary text-xs">[[topic:not-watching.description]]</div>
				</div>
				<span class="flex-shrink-0"><i component="topic/not-following/check" class="fa fa-fw {{{ if isNotFollowing }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>

		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/ignoring" role="menuitem">
				<div class="flex-grow-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2">
						<i class="flex-shrink-0 fa fa-fw fa-eye-slash text-secondary"></i>
						<span class="flex-grow-1 fw-semibold">[[topic:ignoring]]</span>
					</span>
					<div class="help-text text-secondary text-xs">[[topic:ignoring.description]]</div>
				</div>
				<span class="flex-shrink-0"><i component="topic/ignoring/check" class="fa fa-fw {{{ if isIgnoring }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>
	</ul>
</div>
{{{ end }}}