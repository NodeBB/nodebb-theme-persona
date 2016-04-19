<!-- IF config.loggedIn -->
<div class="btn-group watch-menu" component="topic/watch_menu">
	<button component="topic/following/menu" class="btn btn-info dropdown-toggle <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->"
		data-toggle="dropdown" type="button"
		title="[[topic:following_topic.message]]">
		<span  class="visible-sm-inline visible-md-inline visible-lg-inline ">[[topic:watch]]</span>
		<i class="fa fa-bell"></i>
		<span class="caret"></span>
	</button>
	<button component="topic/normal/menu" class="btn btn-default dropdown-toggle <!-- IF !isNormal -->hidden<!-- ENDIF !isNormal -->"
		data-toggle="dropdown" type="button"
		title="[[topic:not_following_topic.message]]">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline ">[[topic:unwatch]]</span>
		<i class="fa fa-eye"></i>
		<span class="caret"></span>
	</button>
	<button component="topic/ignoring/menu" class="btn btn-warning dropdown-toggle <!-- IF !isIgnoring -->hidden<!-- ENDIF !isIgnoring -->"
		data-toggle="dropdown" type="button"
		title="[[topic:ignoring_topic.message]]">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:ignore]]</span>
		<i class="fa fa-eye-slash"></i>
		<span class="caret"></span>
	</button>

	<ul class="dropdown-menu dropdown-menu-right">
		<li>
			<a component="topic/watch" ="#"
				data-watch="follow" title="[[topic:following_topic.message]]">
				<i class="fa fa-fw <!-- IF isFollowing -->fa-check<!-- ENDIF isFollowing -->" component="topic/watch/check"></i>
				<i class="fa fa-bell"></i>
				[[topic:watch_topic]]
			</a>
		</li>
		<li>
			<a component="topic/unwatch" href="#"
				data-watch="unfollow" title="[[topic:not_following_topic.message]]">
				<i class="fa fa-fw <!-- IF isNormal -->fa-check<!-- ENDIF isNormal -->" component="topic/unwatch/check"></i>
				<i class="fa fa-eye"></i>
				[[topic:dont_watch_topic]]
			</a>
		</li>
		<li>
			<a component="topic/ignore" href="#"
				data-watch="ignore" title="[[topic:ignoring_topic.message]]">
				<i class="fa fa-fw <!-- IF isIgnoring -->fa-check<!-- ENDIF isIgnoring -->" component="topic/ignore/check"></i>
				<i class="fa fa-eye-slash"></i>
				[[topic:ignore_topic]]
			</a>
		</li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->
