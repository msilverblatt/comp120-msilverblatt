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
//= require turbolinks
//= require_tree .
//= require rails-timeago
var last = $("#first").attr("last");
jQuery(document).ready(function() {
  jQuery("abbr.timeago").timeago();

});

setInterval(function() {
  last = $("#first").attr("last");
  $.ajax({
   type: "GET",
   url: "/messagessince.json",
   dataType: "json",
   data:  {'id' : last } ,
   success: function(data){ 
   	 //$("#log").empty();
   	 console.log(data);
   	 for (d in data) {
   	 	dt = new Date(data[d].created_at);
   	 	if (data[d].active == true) $(".header").after("<tr><td>"+data[d].content+"</td><td></td><td>"+data[d].username+" </td><td><abbr class='timeago' title='"+dt.toISOString()+"'></abbr></td></tr>");

   	 }
   	 if (data.length != 0) $("#first").attr("last", data[data.length-1].id);
//     $(data).appendTo("#first");
     jQuery("abbr.timeago").timeago();
   }
 });
}, 1000);