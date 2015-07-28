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
//= require fancybox
//= require jquery.turbolinks
//= require lightbox
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var fancybox = function() {
	$(".fancybox").fancybox();
};


$(document).on('page:load', function() {
	var $container = $('#container');

	$container.imagesLoaded( function() {
		$container.masonry({
			itemSelector: '.fancybox'
		});

		$container.masonry('reload');
	});

	jQuery(function() {
		$("a.fancybox").fancybox();
	});
});


$(document).on("page:load ready", fancybox);

window.onload = function(){
	var $container = $('#container');

	$container.imagesLoaded( function() {
		$container.masonry({
			itemSelector: '.fancybox'
		});

		$container.masonry('reload');
	});

	jQuery(function() {
		$("a.fancybox").fancybox();
	});


}

// window.onload = function(){
// 	var $container = $('#container');

// 	$container.imagesLoaded( function() {
// 		$container.masonry({
// 			itemSelector: '.item'
// 		});

// 		$container.masonry('reload');
// 	});
// }


// $(document).ready(function() {
// 	$container.masonry('reload');
// });


// var fancybox = function(){
//     $(".lightbox").lightbox();
// };

// $(document).on("page:load ready", lightbox);