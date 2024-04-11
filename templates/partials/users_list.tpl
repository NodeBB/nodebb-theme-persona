<ul id="users-container" class="users-container list-unstyled d-flex flex-wrap gap-2">
{{{each users}}}
<!-- IMPORT partials/users/item.tpl -->
{{{end}}}
<!-- IF anonymousUserCount -->
<li class="users-box anon-user text-center pb-3" style="width: 102px;">
	<span class="avatar avatar-rounded text-bg-secondary" component="avatar/icon" style="--avatar-size: 64px;">G</span>
	<br/>
	<div class="user-info">
		<span id="online_anon_count">{anonymousUserCount}</span>
		<span>[[global:guests]]</span>
	</div>
</li>
<!-- ENDIF anonymousUserCount -->
</ul>