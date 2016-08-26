		</div><!-- END container -->
	</main>

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>


	<div class="topic-search hidden-xs-up">
		<div class="btn-group">
			<button type="button" class="btn btn-secondary count"></button>
			<button type="button" class="btn btn-secondary prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-secondary next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {title}]]</p>
		</div>
	</div>

	<script>
		require(['forum/footer']);
	</script>
</body>
</html>
