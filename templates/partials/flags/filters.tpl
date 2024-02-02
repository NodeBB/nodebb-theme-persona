<div class="text-center">
	<div class="card mb-3">
		<div class="card-body collapse" id="flags-daily-wrapper" aria-expanded="false">
			<div class="position-relative" style="aspect-ratio: 2; max-height: initial;">
				<canvas id="flags:daily" style="max-height: initial;"></canvas>
			</div>
		</div>
		<div class="card-footer" data-bs-toggle="collapse" data-bs-target="#flags-daily-wrapper" aria-controls="#flags-daily-wrapper"><small>[[flags:graph-label]]</small>&nbsp;<i class="fa fa-sort"></i></div>
	</div>
</div>

<div class="card mb-3">
	<div class="card-header">
		[[flags:quick-filters]]
	</div>
	<div class="card-body">
		<ul>
			<li><a href="{config.relative_path}/flags?quick=mine">[[flags:filter-quick-mine]]</a></li>
		</ul>
	</div>
</div>

<div class="card mb-3">
	<div class="card-header">
		[[flags:filters]]
	</div>
	<div class="card-body">
		<form role="form" component="flags/filters">
			<fieldset>
				<div class="mb-3">
					<label class="form-label" for="filter-cid">[[flags:filter-cid]]</label>
					<div class="input-group">
					<!-- IMPORT partials/category/filter-dropdown-left.tpl -->
					</div>
				</div>
				<div class="mb-3">
					<label class="form-label" for="sort">[[flags:sort]]</label>
					<select class="form-control" id="sort" name="sort">
						<optgroup label="[[flags:sort-all]]">
							<option value="newest">[[flags:sort-newest]]</option>
							<option value="oldest">[[flags:sort-oldest]]</option>
							<option value="reports">[[flags:sort-reports]]</option>
						</optgroup>
						<optgroup label="[[flags:sort-posts-only]]">
							<option value="downvotes">[[flags:sort-downvotes]]</option>
							<option value="upvotes">[[flags:sort-upvotes]]</option>
							<option value="replies">[[flags:sort-replies]]</option>
						</optgroup>
					</select>
				</div>
				<div class="mb-3">
					<label class="form-label" for="filter-state">[[flags:filter-state]]</label>
					<select class="form-control" id="filter-state" name="state">
						<option value="">[[flags:state-all]]</option>
						<option value="open">[[flags:state-open]]</option>
						<option value="wip">[[flags:state-wip]]</option>
						<option value="resolved">[[flags:state-resolved]]</option>
						<option value="rejected">[[flags:state-rejected]]</option>
					</select>
				</div>

				<div class="mb-3">
					<label class="form-label" for="filter-type">[[flags:filter-type]]</label>
					<select class="form-control" id="filter-type" name="type">
						<option value="">[[flags:filter-type-all]]</option>
						<option value="post">[[flags:filter-type-post]]</option>
						<option value="user">[[flags:filter-type-user]]</option>
					</select>
				</div>
			</fieldset>

			<fieldset class="collapse{{{ if expanded }}} show{{{ end }}}" id="more-filters" aria-expanded="{expanded}">
				<div class="mb-3">
					<label class="form-label" for="filter-assignee">[[flags:filter-assignee]]</label>
					<div component="flags/filter/assignee" class="dropdown" data-filter-name="assignee">
						<a component="user/filter/button" class="filter-btn btn btn-sm border {{{ if filters.assignee }}}btn-primary{{{ else }}}btn-light{{{ end }}} dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
							<span class="filter-label">[[flags:filter-assignee]]</span>
							<span class="caret"></span>
						</a>

						<ul class="dropdown-menu" style="width: 350px;" role="menu">
							<li class="px-3 py-1 d-flex flex-column gap-2">
								<input type="text" class="form-control" component="user/filter/search" placeholder="[[search:type-a-username]]">
								<div component="user/filter/selected" class="d-flex flex-wrap gap-2">
									{{{ each selected.assignee }}}
									<div class="d-flex px-2 py-1 rounded-1 text-bg-primary gap-2 align-items-center text-sm">
										{buildAvatar(@value, "16px", true)} {./username}
										<button type="button" component="user/filter/delete" data-uid="{./uid}" class="btn btn-primary btn-sm py-0"><i class="fa fa-times fa-xs"></i></button>
									</div>
									{{{ end }}}
								</div>
								<hr/>
								<div component="user/filter/results" class="d-flex flex-wrap gap-2">
									{{{ each userFilterResults }}}
									<button type="button" class="btn btn-light btn-sm border" data-uid="{./uid}" data-username="{./username}">{buildAvatar(@value, "16px", true)} {./username}</button>
									{{{ end }}}
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-label" for="filter-targetUid">[[flags:filter-targetUid]]</label>
					<div component="flags/filter/targetUid" class="dropdown" data-filter-name="targetUid">
						<a component="user/filter/button" class="filter-btn btn btn-sm border {{{ if filters.targetUid }}}btn-primary{{{ else }}}btn-light{{{ end }}} dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
							<span class="filter-label">[[flags:filter-targetUid]]</span>
							<span class="caret"></span>
						</a>

						<ul class="dropdown-menu" style="width: 350px;" role="menu">
							<li class="px-3 py-1 d-flex flex-column gap-2">
								<input type="text" class="form-control" component="user/filter/search" placeholder="[[search:type-a-username]]">
								<div component="user/filter/selected" class="d-flex flex-wrap gap-2">
									{{{ each selected.targetUid }}}
									<div class="d-flex px-2 py-1 rounded-1 text-bg-primary gap-2 align-items-center text-sm">
										{buildAvatar(@value, "16px", true)} {./username}
										<button type="button" component="user/filter/delete" data-uid="{./uid}" class="btn btn-primary btn-sm py-0"><i class="fa fa-times fa-xs"></i></button>
									</div>
									{{{ end }}}
								</div>
								<hr/>
								<div component="user/filter/results" class="d-flex flex-wrap gap-2">
									{{{ each userFilterResults }}}
									<button type="button" class="btn btn-light btn-sm border" data-uid="{./uid}" data-username="{./username}">{buildAvatar(@value, "16px", true)} {./username}</button>
									{{{ end }}}
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-label" for="filter-reporterId">[[flags:filter-reporterId]]</label>
					<div component="flags/filter/reporterId" class="dropdown" data-filter-name="reporterId">
						<a component="user/filter/button" class="filter-btn btn btn-sm border {{{ if filters.reporterId }}}btn-primary{{{ else }}}btn-light{{{ end }}} dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
							<span class="filter-label">[[flags:filter-reporterId]]</span>
							<span class="caret"></span>
						</a>

						<ul class="dropdown-menu" style="width: 350px;" role="menu">
							<li class="px-3 py-1 d-flex flex-column gap-2">
								<input type="text" class="form-control" component="user/filter/search" placeholder="[[search:type-a-username]]">
								<div component="user/filter/selected" class="d-flex flex-wrap gap-2">
									{{{ each selected.reporterId }}}
									<div class="d-flex px-2 py-1 rounded-1 text-bg-primary gap-2 align-items-center text-sm">
										{buildAvatar(@value, "16px", true)} {./username}
										<button type="button" component="user/filter/delete" data-uid="{./uid}" class="btn btn-primary btn-sm py-0"><i class="fa fa-times fa-xs"></i></button>
									</div>
									{{{ end }}}
								</div>
								<hr/>
								<div component="user/filter/results" class="d-flex flex-wrap gap-2">
									{{{ each userFilterResults }}}
									<button type="button" class="btn btn-light btn-sm border" data-uid="{./uid}" data-username="{./username}">{buildAvatar(@value, "16px", true)} {./username}</button>
									{{{ end }}}
								</div>
							</li>
						</ul>
					</div>
				</div>
			</fieldset>

			<div class="d-grid gap-2">
				{{{ if expanded }}}
				<button type="button" class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#more-filters" aria-controls="#more-filters" data-text-variant="[[flags:more-filters]] ">[[flags:fewer-filters]]&nbsp;<i class="fa fa-sort"></i></button>
				{{{ else }}}
				<button type="button" class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#more-filters" aria-controls="#more-filters" data-text-variant="[[flags:fewer-filters]] ">[[flags:more-filters]]&nbsp;<i class="fa fa-sort"></i></button>
				{{{ end }}}
				<button type="button" id="apply-filters" class="btn btn-primary">[[flags:apply-filters]]</button>
			  </div>
		</form>
	</div>
</div>