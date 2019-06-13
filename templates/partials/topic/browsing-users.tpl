<div component="topic/browsing-users">
	{{{each browsingUsers}}}
	<div class="pull-left">
		<a href="<!-- IF browsingUsers.userslug -->{config.relative_path}/user/{browsingUsers.userslug}<!-- ELSE -->#<!-- ENDIF browsingUsers.userslug -->">
			<!-- IF browsingUsers.picture -->
			<img class="avatar avatar-sm avatar-rounded" component="user/picture" data-uid="{browsingUsers.uid}" src="{browsingUsers.picture}" align="left" itemprop="image" title="{browsingUsers.username}"/>
			<!-- ELSE -->
			<div class="avatar avatar-sm avatar-rounded" component="user/picture" data-uid="{browsingUsers.uid}" title="{browsingUsers.username}" style="background-color: {browsingUsers.icon:bgColor};">{browsingUsers.icon:text}</div>
			<!-- ENDIF browsingUsers.picture -->
		</a>
	</div>
	{{{end}}}
</div>