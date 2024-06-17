<div component="topic/reply/container" class="btn-group bottom-sheet <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">
	<a href="{config.relative_path}/compose?tid={tid}" class="btn btn-sm btn-primary" component="topic/reply" data-ajaxify="false" role="button"><i class="fa fa-reply visible-xs-inline"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[topic:reply]]</span></a>
	<button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li><a class="dropdown-item" href="#" component="topic/reply-as-topic" role="menuitem">[[topic:reply-as-topic]]</a></li>
	</ul>
</div>

<!-- IF loggedIn -->
<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<a component="topic/reply/locked" class="btn btn-sm btn-primary" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<a component="topic/reply/locked" class="btn btn-sm btn-primary hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a component="topic/reply/guest" href="{config.relative_path}/login" class="btn btn-sm btn-primary">[[topic:guest-login-reply]]</a>
<!-- ENDIF !privileges.topics:reply -->
<!-- ENDIF loggedIn -->