<!-- IF loggedIn -->
<div class="btn-group" component="thread/sort">
	<button class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" type="button">
		<span class="hidden-sm-down">[[topic:sort_by]]</span>
		<span class="hidden-md-up"><i class="fa fa-fw fa-sort"></i></span>
	</button>

	<ul class="dropdown-menu dropdown-menu-right">
		<li class="dropdown-item"><a href="#" class="newest_to_oldest" data-sort="newest_to_oldest"><i class="fa fa-fw"></i> [[topic:newest_to_oldest]]</a></li>
		<li class="dropdown-item"><a href="#" class="oldest_to_newest" data-sort="oldest_to_newest"><i class="fa fa-fw"></i> [[topic:oldest_to_newest]]</a></li>
		<li class="dropdown-item"><a href="#" class="most_posts" data-sort="most_posts"><i class="fa fa-fw"></i> [[topic:most_posts]]</a></li>
	</ul>
</div>
<!-- ENDIF loggedIn -->