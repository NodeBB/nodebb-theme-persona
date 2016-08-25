<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown" component="topic/watch">
	<button class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" type="button">
		<span component="topic/following/menu" <!-- IF !isFollowing -->class="hidden-xs-up"<!-- ENDIF !isFollowing -->><i class="fa fa-fw fa-bell-o"></i><span class="hidden-sm-down">[[topic:watching]]</span></span>

		<span component="topic/not-following/menu" <!-- IF !isNotFollowing -->class="hidden-xs-up"<!-- ENDIF !isNotFollowing -->><i class="fa fa-fw fa-bell-slash-o"></i><span class="hidden-sm-down">[[topic:not-watching]]</span></span>

		<span component="topic/ignoring/menu" <!-- IF !isIgnoring -->class="hidden-xs-up"<!-- ENDIF !isIgnoring -->><i class="fa fa-fw fa-eye-slash"></i><span class="hidden-sm-down">[[topic:ignoring]]</span></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<li class="dropdown-item"><a href="#" component="topic/following"><i component="topic/following/check" class="fa fa-fw <!-- IF isFollowing -->fa-check<!-- ENDIF isFollowing -->"></i><i class="fa fa-fw fa-bell-o"></i> [[topic:watching]]<p class="help-text hidden-sm-down"><small>[[topic:watching.description]]</small></p></a></li>
		<li class="dropdown-item"><a href="#" component="topic/not-following"><i component="topic/not-following/check" class="fa fa-fw <!-- IF isNotFollowing -->fa-check<!-- ENDIF isNotFollowing -->"></i><i class="fa fa-fw fa-bell-slash-o"></i> [[topic:not-watching]]<p class="help-text hidden-sm-down"><small>[[topic:not-watching.description]]</small></p></a></li>
		<li class="dropdown-item"><a href="#" component="topic/ignoring"><i component="topic/ignoring/check" class="fa fa-fw <!-- IF isIgnoring -->fa-check<!-- ENDIF isIgnoring -->"></i><i class="fa fa-fw fa-eye-slash"></i> [[topic:ignoring]]<p class="help-text hidden-sm-down"><small>[[topic:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->