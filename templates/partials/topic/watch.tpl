<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown" component="topic/watch">
	<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
		<span component="topic/following/menu" <!-- IF !isFollowing -->class="hidden"<!-- ENDIF !isFollowing -->><i class="fa fa-fw fa-bell"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:following]]</span></span>

		<span component="topic/reading/menu" <!-- IF !isReading -->class="hidden"<!-- ENDIF !isReading -->><i class="fa fa-fw fa-eye"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:reading]]</span></span>

		<span component="topic/ignoring/menu" <!-- IF !isIgnoring -->class="hidden"<!-- ENDIF !isIgnoring -->><i class="fa fa-fw fa-eye-slash"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:ignoring]]</span></span>

		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-right">
		<li><a href="#" component="topic/following"><i component="topic/following/check" class="fa fa-fw <!-- IF isFollowing -->fa-check<!-- ENDIF isFollowing -->"></i><i class="fa fa-fw fa-bell"></i> [[topic:following]]<p class="help-text"><small>[[topic:following.description]]</small></p></a></li>
		<li><a href="#" component="topic/reading"><i component="topic/reading/check" class="fa fa-fw <!-- IF isReading -->fa-check<!-- ENDIF isReading -->"></i><i class="fa fa-fw fa-eye"></i> [[topic:reading]]<p class="help-text"><small>[[topic:reading.description]]</small></p></a></li>
		<li><a href="#" component="topic/ignoring"><i component="topic/ignoring/check" class="fa fa-fw <!-- IF isIgnoring -->fa-check<!-- ENDIF isIgnoring -->"></i><i class="fa fa-fw fa-eye-slash"></i> [[topic:ignoring]]<p class="help-text"><small>[[topic:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->