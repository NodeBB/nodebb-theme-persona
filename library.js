'use strict';

const meta = require.main.require('./src/meta');
const user = require.main.require('./src/user');

const library = module.exports;

library.init = async function (params) {
	const { router, middleware } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');
	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/persona', middleware, [], (req, res) => {
		res.render('admin/plugins/persona', {});
	});
};

library.addAdminNavigation = async function (header) {
	header.plugins.push({
		route: '/plugins/persona',
		icon: 'fa-paint-brush',
		name: 'Persona Theme',
	});
	return header;
};

library.defineWidgetAreas = async function (areas) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl',
		'login.tpl', 'register.tpl',
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1);
	}
	templates.forEach((template) => {
		locations.forEach((location) => {
			areas.push({
				name: `${capitalizeFirst(template.split('.')[0])} ${capitalizeFirst(location)}`,
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: 'Account Header',
			template: 'account/profile.tpl',
			location: 'header',
		},
	]);
	return areas;
};

library.getThemeConfig = async function (config) {
	const settings = await meta.settings.get('persona');
	config.hideSubCategories = settings.hideSubCategories === 'on';
	config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
	config.enableQuickReply = settings.enableQuickReply === 'on';
	return config;
};

library.addUserToTopic = async function (hookData) {
	const settings = await meta.settings.get('persona');
	if (settings.enableQuickReply === 'on') {
		if (hookData.req.user) {
			const userData = await user.getUserData(hookData.req.user.uid);
			hookData.templateData.loggedInUser = userData;
		} else {
			hookData.templateData.loggedInUser = {
				uid: 0,
				username: '[[global:guest]]',
				picture: user.getDefaultAvatar(),
				'icon:text': '?',
				'icon:bgColor': '#aaa',
			};
		}
	}

	return hookData;
};

module.exports = library;
