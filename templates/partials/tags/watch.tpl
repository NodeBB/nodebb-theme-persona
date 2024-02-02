{{{ if config.loggedIn }}}
<div class="btn-group bottom-sheet" component="tag/watch"
data-bs-toggle="tooltip">
	<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
		<span component="tag/following/menu" {{{ if !isFollowing }}}class="hidden"{{{ end }}}>
			<i class="fa fa-fw fa-bell-o"></i>
			<span class="d-none d-md-inline">[[tags:watching]]</span>
		</span>
		<span component="tag/not-following/menu" {{{ if isFollowing }}}class="hidden"{{{ end }}}>
			<i class="fa fa-fw fa-bell-slash-o"></i>
			<span class="d-none d-md-inline">[[tags:not-watching]]</span>
		</span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li>
			<a class="dropdown-item d-flex" href="#" component="tag/following" role="menuitem">
				<span><i component="tag/following/check" class="fa fa-fw {{{ if isFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-o"></i> [[tags:watching]]</span>
					<p class="help-text text-muted"><small>[[tags:watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="tag/not-following" role="menuitem">
				<span><i component="tag/not-following/check" class="fa fa-fw {{{ if !isFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-slash-o"></i> [[tags:not-watching]]</span>
					<p class="help-text text-muted"><small>[[tags:not-watching.description]]</small></p>
				</div>
			</a>
		</li>
	</ul>
</div>
{{{ end }}}