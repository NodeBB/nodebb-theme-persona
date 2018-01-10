<!-- BEGIN users -->
<li class="list-group-item">
	<!-- IF ../picture -->
	<img class="avatar avatar-sm" component="user/picture" data-uid="{../uid}" src="{../picture}" align="left" itemprop="image" />
	<!-- ELSE -->
	<div class="avatar avatar-sm" component="user/picture" data-uid="{../uid}" style="background-color: {../icon:bgColor};">{../icon:text}</div>
	<!-- ENDIF ../picture -->

	<span>{../username}</span>
</li>
<!-- END -->