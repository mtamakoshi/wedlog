// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $(function(){
    $("#slides").slidesjs({
      width: 800,
      height: 600
    });
  });


  $(function(){
    $("#slides").slidesjs({
      navigation: {
        active: true,
          // [boolean] Generates next and previous buttons.
          // You can set to false and use your own buttons.
          // User defined buttons must have the following:
          // previous button: class="slidesjs-previous slidesjs-navigation"
          // next button: class="slidesjs-next slidesjs-navigation"
        effect: "slide"
          // [string] Can be either "slide" or "fade".
      }
    });
  });

  $(function(){
    $("#slides").slidesjs({
      pagination: {
        active: true,
          // [boolean] Create pagination items.
        effect: "slide"
          // [string] Can be either "slide" or "fade".
      }
    });
  });

  $(function(){
    $("#slides").slidesjs({
      play: {
        active: true,
          // [boolean] Generate the play and stop buttons.
          // You cannot use your own buttons. Sorry.
        effect: "slide",
          // [string] Can be either "slide" or "fade".
        interval: 5000,
          // [number] Time spent on each slide in milliseconds.
        auto: false,
          // [boolean] Start playing the slideshow on load.
        swap: true,
          // [boolean] show/hide stop and play buttons
        pauseOnHover: false,
          // [boolean] pause a playing slideshow on hover
        restartDelay: 2500
          // [number] restart delay on inactive slideshow
      }
    });
  });


  $(function(){
    $("#slides").slidesjs({
      effect: {
        slide: {
          // Slide effect settings.
          speed: 200
            // [number] Speed in milliseconds of the slide animation.
        },
        fade: {
          speed: 300,
            // [number] Speed in milliseconds of the fade animation.
          crossfade: true
            // [boolean] Cross-fade the transition.
        }
      }
    });
  });


});

