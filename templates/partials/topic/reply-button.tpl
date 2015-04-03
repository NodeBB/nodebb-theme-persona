<!-- IF !loggedIn -->
<a href="/login?next=topic/{slug}" class="btn btn-primary">[[topic:guest-login-reply]]</a>
<!-- ELSE -->
<a component="topic/reply" class="btn btn-primary post_reply <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>

<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<a component="topic/reply/locked" class="btn btn-primary post_reply" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<a component="topic/reply/locked" class="btn btn-primary post_reply hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
<!-- ENDIF !locked -->

<!-- ENDIF !loggedIn -->