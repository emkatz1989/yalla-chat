// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require faye
//= require messages
//= require_tree .

$(function(){
	var faye = new Faye.Client('http://localhost:9292/faye');
	// Make 'subscribe' dependent on page the user is currently on
	///messages/new as channel that you want to subscribe to, and second argument function is a callback function
	faye.subscribe("/messages/new", function(data){
		eval(data);
	});
});
