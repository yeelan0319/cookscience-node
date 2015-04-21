'use strict';

var _ = require('underscore')._;

(function(module) {

	var Plugin = {};

	function renderHomepage(req, res, next){
		res.render('home', {});
	}

	Plugin.init = function(params, callback) {
		var app = params.router,
			middleware = params.middleware,
			controllers = params.controllers;

		app.route('/').get(params.middleware.buildHeader, renderHomepage);
		app.route('/api').get(function(req, res, next) {
			res.json({template: {name: "home"}});
			//res.json({});
		});
		//app.get('/complete-institution-info', params.middleware.buildHeader, fillAdditionalInfo);
		callback();
	};

	// function fillAdditionalInfo(req, res, next){
	// 	res.render('userInfo', {});
	// };

	Plugin.addCustomField = function(params, callback){
		params.fields = params.fields.concat(['institution', 'lab', 'discipline', 'receiveAd']);
		callback(null, params);
	}

	Plugin.addProtocolField = function(params, callback){
		params.userData.protocols = _.filter(params.userData.posts, function(post){
			return post.index === 1;
		})
		params.userData.protocolsCount = params.userData.protocols.length;
		callback(null, params);
	}
	
	module.exports = Plugin;
}(module));
