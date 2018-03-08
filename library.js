'use strict';

var Promise = require('bluebird');
var striptags = require('striptags');
var request = require('request');
var nconf = require('nconf');
var _ = require('lodash');
var meta = module.parent.require('./meta');
var user = module.parent.require('./user');

Promise.promisifyAll(request);

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

library.getTeasers = function(data, callback) {
	data.teasers.forEach(function(teaser) {
		if (teaser && teaser.content) {
			teaser.content = striptags(teaser.content, ['img']);
		}
	});
	callback(null, data);
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
		}
	]);

	callback(null, areas);
};

library.getThemeConfig = function(config, callback) {

	meta.settings.get('persona', function(err, settings) {
		config.hideSubCategories = settings.hideSubCategories === 'on';
		config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
		config.enableQuickReply = settings.enableQuickReply === 'on';
	});

	callback(false, config);
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
		callback(null, data);
	}
};

library.getLinkTags = function (data, callback) {
	data.links.push({
		rel: 'prefetch stylesheet',
		type: '',
		href: 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700',
	});

	callback(null, data);
};

var url = nconf.get('websites:r1:url');

var getHeader = _.throttle(function () {
	return request.getAsync(url + '/partials/header').timeout(2000)
		.spread(function (response, body) {
			if (response.statusCode != 200) throw new Error();

			return body;
		})
		.catch(function (err) {
			getHeader.cancel();
			return '';
		});
}, 1000 * 60 * 60);

var getFooter = _.throttle(function () {
	return request.getAsync(url + '/partials/footer').timeout(2000)
		.spread(function (response, body) {
			if (response.statusCode != 200) throw new Error();

			return body;
		})
		.catch(function () {
			getFooter.cancel();
			return '';
		});
}, 1000 * 60 * 60);

library.renderHeader = function(data, callback) {
	return getHeader().then(header => {
			data.templateValues.r1Header = header;
			callback(null, data);
	})
	.catch(function () {
			callback(null, data);
	});
};

library.renderFooter = function(data, callback) {
	return getFooter().then(footer => {
			data.templateValues.r1Footer = footer.replace(/loginFpp/g, 'login?local=1');
			callback(null, data);
	})
	.catch(err => {
			callback(null, data);
	});
};

module.exports = library;
