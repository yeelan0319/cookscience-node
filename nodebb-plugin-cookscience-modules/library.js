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
		app.get('/confirmation-email-sent', params.middleware.buildHeader, renderConfirmEmailNotification);
		app.get('/complete-user-info', params.middleware.buildHeader, fillAdditionalInfo);
		
		callback();
	};

	function renderConfirmEmailNotification(req, res, next){
		res.render('confirmemail', {});
	}

	Plugin.addCustomRegisterStep = function(params, callback){
		params.referrer = "/confirmation-email-sent";
		callback(null, params);
	}

	function fillAdditionalInfo(req, res, callback){
		if(req.uid){
			res.render('userInfo', {uid: req.uid});
		}
		else{
			return callback(new Error('[[error:not-logged-in]]'));
		}	
	};

	Plugin.addCustomFieldInProfileEdit = function(params, callback){
		params.fields = params.fields.concat(['institution', 'lab', 'discipline', 'receiveAd']);
		callback(null, params);
	}

	Plugin.showUserProtocolPostNumberInProfile = function(params, callback){
		params.userData.protocols = _.filter(params.userData.posts, function(post){
			return post.index === 1;
		})
		params.userData.protocolsCount = params.userData.protocols.length;
		callback(null, params);
	}
	
	module.exports = Plugin;
}(module));
