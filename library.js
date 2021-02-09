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
	areas = areas.concat([
		{
			name: "Categories Sidebar",
			template: "categories.tpl",
			location: "sidebar"
		},
		{
			name: "Category Sidebar",
			template: "category.tpl",
			location: "sidebar"
		},
		{
			name: "Topic Sidebar",
			template: "topic.tpl",
			location: "sidebar"
		},
		{
			name: "Categories Header",
			template: "categories.tpl",
			location: "header"
		},
		{
			name: "Category Header",
			template: "category.tpl",
			location: "header"
		},
		{
			name: "Topic Header",
			template: "topic.tpl",
			location: "header"
		},
		{
			name: "Categories Footer",
			template: "categories.tpl",
			location: "footer"
		},
		{
			name: "Category Footer",
			template: "category.tpl",
			location: "footer"
		},
		{
			name: "Topic Footer",
			template: "topic.tpl",
			location: "footer"
		},
		{
			name: "Account Header",
			template: "account/profile.tpl",
			location: "header"
		},
		{
			name: "Users Header",
			template: "users.tpl",
			location: "header"
		},
		{
			name: "Tags Header",
			template: "tags.tpl",
			location: "header"
		},
		{
			name: "Tag Header",
			template: "tag.tpl",
			location: "header"
		}
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

library.addUserToTopic = function(data, callback) {
	if (data.req.user) {
		user.getUserData(data.req.user.uid, function(err, userdata) {
			if (err) {
				return callback(err);
			}

			data.templateData.loggedInUser = userdata;
			callback(null, data);
		});
	} else {
		data.templateData.loggedInUser =  {
			uid: 0,
			username: '[[global:guest]]',
			picture: user.getDefaultAvatar(),
			'icon:text': '?',
			'icon:bgColor': '#aaa',
		};
		callback(null, data);
	}
};

module.exports = library;
