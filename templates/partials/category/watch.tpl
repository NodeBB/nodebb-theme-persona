<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown" component="topic/watch">
	<button class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" type="button">
		<span component="category/watching/menu" <!-- IF isIgnored -->class="hidden-xs-up"<!-- ENDIF isIgnored -->><i class="fa fa-fw fa-eye"></i><span class="hidden-sm-down">[[category:watching]]</span></span>
		<span component="category/ignoring/menu" <!-- IF !isIgnored -->class="hidden-xs-up"<!-- ENDIF !isIgnored -->><i class="fa fa-fw fa-eye-slash"></i><span class="hidden-sm-down">[[category:ignoring]]</span></span>
	</button>

	<ul class="dropdown-menu dropdown-menu-right">
		<li class="dropdown-item"><a href="#" component="category/watching"><i component="category/watching/check" class="fa fa-fw <!-- IF !isIgnored -->fa-check<!-- ENDIF !isIgnored -->"></i><i class="fa fa-fw fa-eye"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
		<li class="dropdown-item"><a href="#" component="category/ignoring"><i component="category/ignoring/check" class="fa fa-fw <!-- IF isIgnored -->fa-check<!-- ENDIF isIgnored -->"></i><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->