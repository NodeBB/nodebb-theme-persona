'use strict';
/* globals $, app */

define('admin/plugins/soleclub', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('soleclub', $('.soleclub-settings'));

		$('#save').on('click', function() {
			Settings.save('soleclub', $('.soleclub-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'soleclub-saved',
					title: 'Settings Saved',
					message: 'Soleclub theme settings saved'
				});
			});
		});
	};

	return ACP;
});
