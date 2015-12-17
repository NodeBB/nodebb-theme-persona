<!-- IF config.loggedIn -->
<button component="topic/follow" class="btn btn-info <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->">
	<i class="fa fa-eye"></i>
</button>

<button component="topic/unfollow" class="btn btn-warning <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->">
	<i class="fa fa-eye-slash"></i>
</button>
<!-- ENDIF config.loggedIn -->