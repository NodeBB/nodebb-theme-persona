<div class="d-flex mb-3">
	<!-- IF group.isOwner -->
	<div class="flex-shrink-0">
		<button component="groups/members/add" type="button" class="btn btn-primary me-3" title="[[groups:details.add-member]]"><i class="fa fa-user-plus"></i></button>
	</div>
	<!-- ENDIF group.isOwner -->
	<div class="flex-grow-1">
		<div class="input-group">
			<input class="form-control" type="text" component="groups/members/search" placeholder="[[global:search]]"/>
			<span class="input-group-text search-button"><i class="fa fa-search"></i></span>
		</div>
	</div>
</div>

<div component="groups/members" data-nextstart="{group.membersNextStart}" style="max-height: 500px; overflow: auto;">
	<table class="table table-striped table-hover">
		<tbody>
		{{{each group.members}}}
		<tr data-uid="{group.members.uid}" data-isowner="{{{ if group.members.isOwner }}}1{{{ else }}}0{{{ end }}}">
			<td class="p-2">
				<a href="{config.relative_path}/user/{group.members.userslug}">{buildAvatar(group.members, "24px", true)}</a>
			</td>
			<td class="member-name w-100 p-2">
				<a class="align-text-top" href="{config.relative_path}/user/{group.members.userslug}">{group.members.username}</a>
				<i component="groups/owner/icon" title="[[groups:owner]]" class="user-owner-icon fa fa-star align-text-top text-warning <!-- IF !group.members.isOwner -->invisible<!-- ENDIF !group.members.isOwner -->"></i>

				<!-- IF group.isOwner -->
				<div class="owner-controls btn-group float-end">
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
		{{{end}}}
		</tbody>
	</table>
</div>