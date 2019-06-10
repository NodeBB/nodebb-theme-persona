<h3>[[global:upvoters]] <small>({upvoteCount})</small></h3>
<!-- BEGIN upvoters -->
<a href="{config.relative_path}/user/{upvoters.userslug}">{buildAvatar(upvoters, "sm", false)}</a>
<!-- END upvoters -->
<!-- IF showDownvotes -->
<h3>[[global:downvoters]] <small>({downvoteCount})</small></h3>
<!-- BEGIN downvoters -->
<a href="{config.relative_path}/user/{downvoters.userslug}">{buildAvatar(downvoters, "sm", false)}</a>
<!-- END downvoters -->
<!-- ENDIF showDownvotes -->
