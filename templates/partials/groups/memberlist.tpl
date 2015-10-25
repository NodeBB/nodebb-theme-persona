<input class="form-control" type="text" component="groups/members/search" placeholder="[[global:search]]"/><br/>
<table component="groups/members" class="table table-striped table-hover" data-nextstart="{group.membersNextStart}">
	<!-- BEGIN members -->
	<tr data-uid="{group.members.uid}">
		<td>
			<a href="{config.relative_path}/user/{group.members.userslug}">
				<!-- IF group.members.picture -->
				<img src="{group.members.picture}" />
				<!-- ELSE -->
				<div class="user-icon" style="background-color: {group.members.icon:bgColor};">{group.members.icon:text}</div>
				<!-- ENDIF group.members.picture -->
			</a>
		</td>
		<td class="member-name">
			<a href="{config.relative_path}/user/{group.members.userslug}">{group.members.username}</a> <i title="[[groups:owner]]" class="fa fa-star text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>
		</td>
		<!-- IF group.isOwner -->
		<td>
			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					[[global:more]] <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li>
						<a href="#" data-ajaxify="false" data-action="toggleOwnership">
							[[groups:details.grant]]
						</a>
					</li>
					<li>
						<a href="#" data-ajaxify="false" data-action="kick">
							[[groups:details.kick]]
						</a>
					</li>
				</ul>
			</div>
		</td>
		<!-- ENDIF group.isOwner -->
	</tr>
	<!-- END members -->
</table>