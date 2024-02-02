<!-- IF config.loggedIn -->
<div class="btn-group bottom-sheet" component="topic/watch">
	<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
		<span component="category/watching/menu" <!-- IF !../isWatched -->class="hidden"<!-- ENDIF !../isWatched -->><i class="fa fa-fw fa-bell-o"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[category:watching]]</span></span>

		<span component="category/tracking/menu" <!-- IF !../isTracked -->class="hidden"<!-- ENDIF !../isTracked -->><i class="fa fa-fw fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[category:tracking]]</span></span>

		<span component="category/notwatching/menu" <!-- IF !../isNotWatched -->class="hidden"<!-- ENDIF !../isNotWatched -->><i class="fa fa-fw fa-clock-o"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[category:not-watching]]</span></span>

		<span component="category/ignoring/menu" <!-- IF !../isIgnored -->class="hidden"<!-- ENDIF !../isIgnored -->><i class="fa fa-fw fa-eye-slash"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[category:ignoring]]</span></span>
		<span class="caret"></span>
	</button>

	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li>
			<a class="dropdown-item d-flex" href="#" component="category/watching" data-state="watching" role="menuitem">
				<span><i component="category/watching/check" class="fa fa-fw {{{ if ./isWatched }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-o"></i> [[category:watching]]</span>
					<p class="help-text text-muted"><small>[[category:watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="category/tracking" data-state="tracking" role="menuitem">
				<span><i component="category/tracking/check" class="fa fa-fw {{{ if ./isTracked }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-inbox"></i> [[category:tracking]]</span>
					<p class="help-text text-muted"><small>[[category:tracking.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="category/notwatching" data-state="notwatching" role="menuitem">
				<span><i component="category/notwatching/check" class="fa fa-fw {{{ if ./isNotWatched }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]</span>
					<p class="help-text text-muted"><small>[[category:not-watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="category/ignoring" data-state="ignoring" role="menuitem">
				<span><i component="category/ignoring/check" class="fa fa-fw {{{ if ./isIgnored }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]</span>
					<p class="help-text text-muted"><small>[[category:ignoring.description]]</small></p>
				</div>
			</a>
		</li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->