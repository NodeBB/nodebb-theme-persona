{{{ if ./user.isLocal }}}
<span component="user/status" class="position-absolute top-100 start-100 border border-white border-2 rounded-circle status {posts.user.status}" data-dynamic-tooltip title="{{tx(concat("global:", posts.user.status))}}" aria-label="{{tx(concat("global:", posts.user.status))}}"></span>
{{{ else }}}
<span component="user/locality" class="position-absolute top-100 start-100 lh-1 border border-white border-2 rounded-circle small" data-dynamic-tooltip="" title="{{tx("global:remote-user")}}" aria-label="{{tx("global:remote-user")}}">
	<i class="fa fa-globe"></i>
</span>
{{{ end }}}