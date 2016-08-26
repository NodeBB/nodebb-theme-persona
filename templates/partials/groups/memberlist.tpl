<div class="input-group">
	<input class="form-control" type="text" component="groups/members/search" placeholder="[[global:search]]"/>
	<span class="input-group-addon search-button"><i class="fa fa-search"></i></span>
</div><br />

<table component="groups/members" class="table table-striped table-hover" data-nextstart="{group.membersNextStart}">
	<tbody>
	<!-- BEGIN members -->
	<tr data-uid="{group.members.uid}">
		<td>
			<a href="{config.relative_path}/user/{group.members.userslug}">
				<!-- IF group.members.picture -->
				<img class="avatar avatar-sm avatar-rounded" src="{group.members.picture}" />
				<!-- ELSE -->
				<div class="avatar avatar-sm avatar-rounded" style="background-color: {group.members.icon:bgColor};">{group.members.icon:text}</div>
				<!-- ENDIF group.members.picture -->
			</a>
		</td>
		<td class="member-name">
			<a href="{config.relative_path}/user/{group.members.userslug}">{group.members.username}</a> <i title="[[groups:owner]]" class="fa fa-star text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>

			<!-- IF group.isOwner -->
			<div class="owner-controls btn-group pull-xs-right">
				<a class="btn btn-sm" href="#" data-ajaxify="false" data-action="toggleOwnership" title="[[groups:details.grant]]">
					<i class="fa fa-star"></i>
				</a>

				<a class="btn btn-sm" href="#" data-ajaxify="false" data-action="kick" title="[[groups:details.kick]]">
					<i class="fa fa-ban"></i>
				</a>
			</div>
			<!-- ENDIF group.isOwner -->
		</td>
	</tr>
	<!-- END members -->
	</tbody>
</table>