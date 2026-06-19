'use strict';

define('admin/plugins/persona', ['settings'], function (Settings) {
	const ACP = {};

	ACP.init = function () {
		Settings.load('persona', $('.persona-settings'));

		$('#save').on('click', function () {
			Settings.save('persona', $('.persona-settings'));
		});
	};

	return ACP;
});
