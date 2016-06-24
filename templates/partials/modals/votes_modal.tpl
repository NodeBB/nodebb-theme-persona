<h3>[[global:upvoters]] <small>({upvoteCount})</small></h3>
<!-- BEGIN upvoters -->
<a href="{config.relative_path}/user/{upvoters.userslug}">
<!-- IF upvoters.picture -->
<img class="avatar avatar-sm" src="{upvoters.picture}" title="{upvoters.username}"/>
<!-- ELSE -->
<div class="avatar avatar-sm" style="background-color: {upvoters.icon:bgColor};">{upvoters.icon:text}</div>
<!-- ENDIF upvoters.picture -->
</a>
<!-- END upvoters -->

<h3>[[global:downvoters]] <small>({downvoteCount})</small></h3>
<!-- BEGIN downvoters -->
<a href="{config.relative_path}/user/{downvoters.userslug}">
<!-- IF downvoters.picture -->
<img class="avatar avatar-sm" src="{downvoters.picture}" title="{downvoters.username}"/>
<!-- ELSE -->
<div class="avatar avatar-sm" style="background-color: {downvoters.icon:bgColor};">{downvoters.icon:text}</div>
<!-- ENDIF downvoters.picture -->
</a>
<!-- END downvoters -->
