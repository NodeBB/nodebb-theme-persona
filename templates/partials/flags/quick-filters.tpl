<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">[[flags:quick-filters]]</h3>
	</div>
	<div class="panel-body">
		<ul>
			<li>Unresolved flags</li>
			<li>Assigned to you</li>
		</ul>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">[[flags:filters]]</h3>
	</div>
	<div class="panel-body">
		<form role="form" component="flags/filters">
			<div class="form-group">
				<label for="reporterId">[[flags:filter-reporterId]]</label>
				<input type="number" class="form-control" id="reporterId" name="reporterId" min="0" />
			</div>

			<div class="form-group">
				<label for="type">[[flags:filter-type]]</label>
				<select class="form-control" id="type" name="type">
					<option value="">[[flags:filter-type-all]]</option>
					<option value="post">[[flags:filter-type-post]]</option>
				</select>
			</div>

			<button type="button" class="btn btn-primary btn-block">[[flags:apply-filters]]</button>
		</form>
	</div>
</div>