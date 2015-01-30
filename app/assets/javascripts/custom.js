 
/*-----------------------------------
 Quick Mobile Detection
 -----------------------------------*/

 var isMobile = {
    Android: function() {
      "use strict";
      return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
      "use strict";
      return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
      "use strict";
      return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
      "use strict";
      return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
      "use strict";
      return navigator.userAgent.match(/IEMobile/i);
    },
    any: function() {
      "use strict";
      return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};

$(document).on('ready page:load', function() {
  "use strict";
  
  /* Slab text */
  $(".headertext").slabText({});

  /* Set full height sections if necessary */
  $('#full-height-section').css({'height':($(window).height())+'px'});

  /* Owl carousel */
  $(".headertext-slider").owlCarousel({
      navigation : false,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true,
      autoPlay : 5500,
      transitionStyle : "goDown"
  });

  /* Full size headers */
  $('.alt-header, #slides').css({'height':($(window).height())+'px'});
  $('slides .slides-container .slide-1').css({'width':($(window).width())+'px'});
  $(window).resize(function(){
    $('.alt-header, #slides').css({'height':($(window).height())+'px'});
    $('slides .slides-container .slide-1').css({'width':($(window).width())+'px'});
  });

  /* Shrink nav bar */
  var menu = $('#navigation');
  $(window).scroll(function () {
    "use strict";
    var y = $(this).scrollTop();
    var z = $('#portfolio,#services,#about,#process,#job,#contact').offset().top + 150;

    if (y >= z) { menu.removeClass('big-nav').addClass('small-nav');}
    else { menu.removeClass('small-nav').addClass('big-nav'); }
  });

  /* Mobile menu */
  $('.mobile-nav-button').click(function() {
    $(".nav-menu").slideToggle("8000");
   });

  $('.nav a').click(function () {
    if ($(window).width() < 960) {
        $(".nav-menu").slideToggle("2000")}
  });

  $(".testimonial-slider").owlCarousel({
      navigation : false,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem:true
  });

  if(!isMobile.any()) {
    $('.parallax1').parallax("50%", 0.5);
    $('.parallax2').parallax("50%", 0.5);
    $('.parallax3').parallax("50%", 0.5);
    $('.parallax4').parallax("50%", 0.5);
    $('.parallax5').parallax("50%", 0.5);
    $('.parallax6').parallax("50%", 0.5);
  }
        
  var $optionSets = $('#options .option-set'),
      $optionLinks = $optionSets.find('a');

  $optionLinks.click(function(){
    var $this = $(this);
    if ( $this.hasClass('selected') ) {
      return false;
    }
    var $optionSet = $this.parents('.option-set');
    $optionSet.find('.selected').removeClass('selected');
    $this.addClass('selected');

    var options = {},
        key = $optionSet.attr('data-option-key'),
        value = $this.attr('data-option-value');
    value = value === 'false' ? false : value;
    options[ key ] = value;
    if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
      changeLayoutMode( $this, options )
    } else {
      $container.isotope( options );
    }
    return false;
  });
  

  var owl_team = $("#team-slider");
  owl_team.owlCarousel({
      items: 3,
      navigation : true,
      pagination : false,
      autoPlay : 5000
  });

  var owl_client = $("#client-slider");
  owl_client.owlCarousel({
      itemsCustom : [
        [0, 1],
        [450, 4],
        [600, 4],
        [700, 4],
        [1000, 8],
        [1200, 8],
        [1400, 8],
        [1600, 8]
      ],
      navigation : false,
      pagination : false,
      autoPlay : 4000
  });

  /* Contact Form */
  $('#submit').click(function(){ 

    $('.error').hide(); 

    var name = $('input#applicant_name').val();
    var email = $('input#applicant_email').val();
    var resume = $('input#applicant_resume').val();
    var email_compare = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; // compare to email input

    if (name == "" || name == " ") {
      $('#error-name').fadeIn('slow');
      return false;

    } else if (email == "" || email == " ") {
      $('#error-email').fadeIn('slow');
      return false;

    } else if (!email_compare.test(email)) {
      $('#error-valid-email').fadeIn('slow');
      return false;

    } else if (resume == "" || resume == " ") {
      $('#error-resume').fadeIn('slow');
      return false;

    }

  });

});