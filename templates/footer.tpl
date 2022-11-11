		</div><!-- /.container#content -->
	</main>
	{{{ if !isSpider }}}
	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
