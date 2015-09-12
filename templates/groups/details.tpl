<!-- IMPORT partials/breadcrumbs.tpl -->

<div component="groups/container" class="details row">
	<div class="col-xs-12" component="groups/cover" style="background-origin: content-box; background-image: url({group.cover:url}); background-position: {group.cover:position};">
		<div class="change">[[groups:cover-change]] <i class="fa fa-fw fa-pencil-square-o"></i></div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<div class="instructions">[[groups:cover-instructions]]</div>
	</div>
	<div class="col-lg-6 col-xs-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<i class="fa fa-list-ul"></i> [[groups:details.title]]
					<!-- IF group.private --><span class="label label-info">[[groups:details.private]]</span><!-- ENDIF group.private -->
					<!-- IF group.hidden --><span class="label label-info">[[groups:details.hidden]]</span>&nbsp;<!-- ENDIF group.hidden -->
				</h3>
			</div>
			<div class="panel-body">
				<h1>{group.displayName}</h1>
				<p>{group.descriptionParsed}</p>
				<!-- IF isAdmin -->
				<div class="pull-right">
					<a href="{config.relative_path}/admin/manage/groups/{group.nameEncoded}" target="_blank" class="btn btn-info"><i class="fa fa-gear"></i> [[user:edit]]</a>
				</div>
				<!-- ENDIF isAdmin -->
				<!-- IF loggedIn -->
				<div class="pull-right">
					{function.membershipBtn, group}&nbsp;
				</div>
				<!-- ENDIF loggedIn -->
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-users"></i> [[groups:details.members]]</h3>
			</div>
			<div class="panel-body">
				<input class="form-control" type="text" component="groups/members/search" placeholder="[[global:search]]"/><br/>
				<table component="groups/members" class="table table-striped table-hover" data-nextstart="{group.membersNextStart}">
					<!-- BEGIN members -->
					<tr data-uid="{group.members.uid}">
						<td>
							<a href="{config.relative_path}/user/{group.members.userslug}"><img src="{group.members.picture}" /></a>
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
			</div>
		</div>
		<!-- IF group.isOwner -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title clearfix">
					<i class="fa fa-clock-o"></i> [[groups:details.pending]]
					<!-- IF group.pending.length -->
					<div class="btn-group pull-right">
						<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							[[global:more]] <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#" data-ajaxify="false" data-action="acceptAll">[[groups:pending.accept_all]]</a></li>
							<li><a href="#" data-ajaxify="false" data-action="rejectAll">[[groups:pending.reject_all]]</a></li>
						</ul>
					</div>
					<!-- ENDIF group.pending.length -->
				</h3>
			</div>
			<div class="panel-body">
				<table component="groups/pending" class="table table-striped table-hover">
					<!-- IF !group.pending.length -->
					<div class="alert alert-info">[[groups:pending.none]]</div>
					<!-- ENDIF !group.pending.length -->
					<!-- BEGIN pending -->
					<tr data-uid="{group.pending.uid}">
						<td>
							<a href="{config.relative_path}/user/{group.pending.userslug}"><img src="{group.pending.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="{config.relative_path}/user/{group.pending.userslug}">{group.pending.username}</a>
						</td>
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									[[global:more]] <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="accept">[[groups:pending.accept]]</a></li>
									<li><a href="#" data-ajaxify="false" data-action="reject">[[groups:pending.reject]]</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- END pending -->
				</table>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title clearfix">
					<i class="fa fa-gift"></i> [[groups:details.invited]]
				</h3>
			</div>
			<div class="panel-body">
				<input class="form-control" type="text" component="groups/members/invite" placeholder="[[groups:invited.search]]"/><br/>
				<table component="groups/invited" class="table table-striped table-hover">
					<!-- IF !group.invited.length -->
					<div class="alert alert-info">[[groups:invited.none]]</div>
					<!-- ENDIF !group.invited.length -->
					<!-- BEGIN invited -->
					<tr data-uid="{group.invited.uid}">
						<td>
							<a href="{config.relative_path}/user/{group.invited.userslug}"><img src="{group.invited.picture}" /></a>
						</td>
						<td class="member-name">
							<a href="{config.relative_path}/user/{group.invited.userslug}">{group.invited.username}</a>
						</td>
						<td>
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									[[global:more]] <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" data-ajaxify="false" data-action="rescindInvite">[[groups:invited.uninvite]]</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<!-- END invited -->
				</table>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->
		<div widget-area="left"></div>
	</div>
	<div class="col-lg-6 col-xs-12">
		<!-- IF group.isOwner -->
		<div class="panel panel-default">
			<div class="panel-heading pointer" data-toggle="collapse" data-target=".options">
				<h3 class="panel-title">
					<i class="fa fa-caret-down pull-right"></i>
					<i class="fa fa-cogs"></i> [[groups:details.owner_options]]
				</h3>
			</div>

			<div class="panel-body options collapse">
				<form component="groups/settings" role="form">
					<div class="form-group">
						<label for="name">[[groups:details.group_name]]</label>
						<input class="form-control" name="name" id="name" type="text" value="{group.displayName}" />
					</div>
					<div class="form-group">
						<label for="name">[[groups:details.description]]</label>
						<textarea class="form-control" name="description" id="description" type="text">{group.description}</textarea>
					</div>
					<div class="form-group user-title-option">
						<label for="userTitle">[[groups:details.badge_text]]</label>
						<input component="groups/userTitleOption" class="form-control" name="userTitle" id="userTitle" type="text" value="{group.userTitle}"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled --> />
					</div>

					<div class="form-group user-title-option">
						<label>[[groups:details.badge_preview]]</label><br />
						<span class="label<!-- IF !group.userTitleEnabled --> hide<!-- ENDIF !group.userTitleEnabled -->" style="background-color: {group.labelColor}"><i class="fa {group.icon} icon"></i> <!-- IF group.userTitle -->{group.userTitle}<!-- ELSE -->{group.displayName}<!-- ENDIF group.userTitle --></span>

						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm" data-action="icon-select"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled -->>[[groups:details.change_icon]]</button>
						<button component="groups/userTitleOption" type="button" class="btn btn-default btn-sm" data-action="color-select"<!-- IF !group.userTitleEnabled --> disabled<!-- ENDIF !group.userTitleEnabled -->>[[groups:details.change_colour]]</button>
						<input type="hidden" name="labelColor" value="<!-- IF group.labelColor -->{group.labelColor}<!-- ENDIF group.labelColor -->" />
						<input type="hidden" name="icon" value="<!-- IF group.icon -->{group.icon}<!-- ENDIF group.icon -->" />
						<div id="icons" class="hidden">
							<div class="icon-container">
								<div class="row fa-icons">
									<i class="fa fa-doesnt-exist"></i>
									<!-- IMPORT partials/fontawesome.tpl -->
								</div>
							</div>
						</div>
					</div>
					<hr />
					<div class="checkbox">
						<label>
							<input name="userTitleEnabled" type="checkbox"<!-- IF group.userTitleEnabled --> checked<!-- ENDIF group.userTitleEnabled-->> <strong>[[groups:details.userTitleEnabled]]</strong>
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input name="private" type="checkbox"<!-- IF group.private --> checked<!-- ENDIF group.private-->> <strong>[[groups:details.private]]</strong>
							<p class="help-block">
								[[groups:details.private_help]]
							</p>
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input name="hidden" type="checkbox"<!-- IF group.hidden --> checked<!-- ENDIF group.hidden-->> <strong>[[groups:details.hidden]]</strong>
							<p class="help-block">
								[[groups:details.hidden_help]]
							</p>
						</label>
					</div>

					<button class="btn btn-link btn-xs pull-right" type="button" data-action="delete">[[groups:details.delete_group]]</button>
					<button class="btn btn-primary" type="button" data-action="update">[[global:save_changes]]</button>
				</form>
			</div>
		</div>
		<!-- ENDIF group.isOwner -->

		<div>
			<!-- IF !posts.length -->
			<div class="alert alert-info">[[groups:details.has_no_posts]]</div>
			<!-- ENDIF !posts.length -->
			<!-- IMPORT partials/posts_list.tpl -->
		</div>
		<div widget-area="right"></div>
	</div>
</div>
