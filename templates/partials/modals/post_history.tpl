<p>
	<!-- IF numDiffs -->
	[[topic:diffs.description, {numDiffs}]]
	<!-- ELSE -->
	[[topic:diffs.no-revisions-description, {numDiffs}]]
	<!-- END -->
</p>
<!-- IF numDiffs -->
<div class="form-group">
	<select class="form-control">
		<!-- BEGIN diffs -->
		<option value="{../timestamp}">
			{../pretty}
			<!-- IF @first -->(last revision)<!-- END -->
			<!-- IF @last -->(original revision)<!-- END -->
		</option>
		<!-- END -->
	</select>

	<hr />

	<ul class="posts-list diffs"></ul>
</div>
<!-- END -->