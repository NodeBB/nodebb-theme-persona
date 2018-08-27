<!-- BEGIN users -->
<li class="list-group-item">
	<!-- IF ../canKick --><button class="pull-right btn btn-xs btn-link" data-action="kick" data-uid="{../uid}">[[modules:chat.kick]]</button><!-- END -->
	<!-- IF ../isOwner --><i class="fa fa-star text-warning" title="[[modules:chat.owner]]"></i><!-- END -->
	<!-- IF ../picture -->
	<img class="avatar avatar-sm" component="user/picture" data-uid="{../uid}" src="{../picture}" align="left" itemprop="image" />
	<!-- ELSE -->
	<div class="avatar avatar-sm" component="user/picture" data-uid="{../uid}" style="background-color: {../icon:bgColor};">{../icon:text}</div>
	<!-- ENDIF ../picture -->

	<span>{../username}</span>
</li>
<!-- END -->