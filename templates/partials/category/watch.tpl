<!-- IF loggedIn -->
<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->">
	<i class="fa fa-eye"></i>
	<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[category:watch]]</span>
</button>
<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->">
	<i class="fa fa-eye-slash"></i>
	<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[category:ignore]]</span>
</button>
<!-- ENDIF loggedIn -->