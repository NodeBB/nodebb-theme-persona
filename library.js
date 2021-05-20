'use strict';

var meta = require.main.require('./src/meta');
var user = require.main.require('./src/user');

var library = {};

library.init = function(params, callback) {
	var app = params.router;
	var middleware = params.middleware;

	app.get('/admin/plugins/persona', middleware.admin.buildHeader, renderAdmin);
	app.get('/api/admin/plugins/persona', renderAdmin);

	callback();
};

library.addAdminNavigation = function(header, callback) {
	header.plugins.push({
		route: '/plugins/persona',
		icon: 'fa-paint-brush',
		name: 'Persona Theme'
	});

	callback(null, header);
};

library.defineWidgetAreas = function(areas, callback) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl'
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1)
	}
	templates.forEach(template => {
		locations.forEach(location => {
			areas.push({
				name: capitalizeFirst(template.split('.')[0]) + ' ' + capitalizeFirst(location),
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: "Account Header",
			template: "account/profile.tpl",
			location: "header"
		},
	]);

	callback(null, areas);
};

library.getThemeConfig = async function(config) {
	const settings = await meta.settings.get('persona');
	config.hideSubCategories = settings.hideSubCategories === 'on';
	config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
	config.enableQuickReply = settings.enableQuickReply === 'on';
	return config;
};

function renderAdmin(req, res, next) {
	res.render('admin/plugins/persona', {});
}

library.addUserToTopic = async function (hookData) {
	if (hookData.req.user) {
		const userData = await user.getUserData(hookData.req.user.uid);
		hookData.templateData.loggedInUser = userData;
	} else {
		hookData.templateData.loggedInUser =  {
			uid: 0,
			username: '[[global:guest]]',
			picture: user.getDefaultAvatar(),
			'icon:text': '?',
			'icon:bgColor': '#aaa',
		};
	}
	return hookData;
};

module.exports = library;
