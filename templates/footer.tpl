		</div><!-- /.container#content -->
	</main>
	<!-- IF !isSpider -->
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div class="position-fixed" data-component="toaster/tray" aria-live="polite" aria-atomic="true" style="position: absolute; top: 4.5rem; right: 1rem; min-height: 200px;">
		<div id="reconnect-alert" class="toast bg-warning" component="toaster/toast" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false">
			<div class="toast-header">
				<strong class="mr-auto">[[global:500.title]]</strong>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">
				<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
			</div>
		</div>
	</div>
	<!-- ENDIF !isSpider -->


	<script defer src="{relative_path}/dist/app.bundle.js?{config.cache-buster}"></script>

	<!--
	{{{each scripts}}}
	<script defer type="text/javascript" src="{scripts.src}"></script>
	{{{end}}}
-->
	<script>
		window.addEventListener('DOMContentLoaded', function () {
			// require(['forum/footer']);

			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide">

	</div>
</body>
</html>
