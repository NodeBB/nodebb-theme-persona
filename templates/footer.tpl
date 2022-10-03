		</div><!-- /.container#content -->
	</main>
	<!-- IF !isSpider -->
	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
