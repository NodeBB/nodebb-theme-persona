'use strict';
/* globals $, app */

define('admin/plugins/persona', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('persona', $('.persona-settings'));

		$('#save').on('click', function() {
			Settings.save('persona', $('.persona-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'persona-saved',
					title: 'Settings Saved',
					message: 'Persona settings saved'
				});
			});
		});
	};

	return ACP;
});