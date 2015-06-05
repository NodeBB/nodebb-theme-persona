

<a component="topic/reply" class="btn btn-primary <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>

<!-- IF loggedIn -->

<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<a component="topic/reply/locked" class="btn btn-primary" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<a component="topic/reply/locked" class="btn btn-primary hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<a href="{config.relative_path}/login" class="btn btn-primary">[[topic:guest-login-reply]]</a>
<!-- ENDIF !privileges.topics:reply -->

<!-- ENDIF loggedIn -->


