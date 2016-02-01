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
//= require isotope/jquery.isotope
//= require isotope.pkgd
//= require isotope.pkgd.min.js
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url = $('.pagination .next_page').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 100) {
        $('.pagination').text("Please Wait...");
		$('#picture-container').masonry( 'reloadItems' );
        return $.getScript(url);
      }
    });
    return $(window).scroll();
  }
});


