<!-- IF config.loggedIn -->
<div class="btn-group bottom-sheet" component="topic/watch"
data-bs-toggle="tooltip"
	{{{if isFollowing}}}title="[[topic:watching]]"{{{end}}}
	{{{if isNotFollowing}}}title="[[topic:not-watching]]"{{{end}}}
	{{{if isIgnoring}}}title="[[topic:ignoring]]"{{{end}}}
>
	<button class="btn btn-sm btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
		<span component="topic/following/menu" <!-- IF !isFollowing -->class="hidden"<!-- ENDIF !isFollowing -->><i class="fa fa-fw fa-bell-o"></i></span>

		<span component="topic/not-following/menu" <!-- IF !isNotFollowing -->class="hidden"<!-- ENDIF !isNotFollowing -->><i class="fa fa-fw fa-bell-slash-o"></i></span>

		<span component="topic/ignoring/menu" <!-- IF !isIgnoring -->class="hidden"<!-- ENDIF !isIgnoring -->><i class="fa fa-fw fa-eye-slash"></i></span>

	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/following" role="menuitem">
				<span><i component="topic/following/check" class="fa fa-fw {{{ if isFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-o"></i> [[topic:watching]]</span>
					<p class="help-text text-muted"><small>[[topic:watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/not-following" role="menuitem">
				<span><i component="topic/not-following/check" class="fa fa-fw {{{ if isNotFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-slash-o"></i> [[topic:not-watching]]</span>
					<p class="help-text text-muted"><small>[[topic:not-watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/ignoring" role="menuitem">
				<span><i component="topic/ignoring/check" class="fa fa-fw {{{ if isIgnoring }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-eye-slash"></i> [[topic:ignoring]]</span>
					<p class="help-text text-muted"><small>[[topic:ignoring.description]]</small></p>
				</div>
			</a>
		</li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->