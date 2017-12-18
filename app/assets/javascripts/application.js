// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .


$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});

$(document).on('turbolinks:load', function(){
	$(window).on('scroll', function(){
		scrolledAmount = $(this).scrollTop();
		if(scrolledAmount > 50){
			$('nav').removeClass('bg-light');
			$('nav').addClass('scrolled-navbar');
		}else{
			$('nav').removeClass('scrolled-navbar');
			$('nav').addClass('bg-light');
		}
	})
});

// $(document).on('turbolinks:load', function(){
// 	$('[data-toggle="slide-collapse"]').on('click', function() {
// 	    $navMenuCont = $($(this).data('target'));
// 	    $navMenuCont.animate({'width':'toggle'}, 350);
// 	});
// })

function isScrolledIntoView(elem) {
  var TopViewPort = $(window).scrollTop();
  var BotViewPort = TopViewPort + $(window).height();
  var TopOfElement = $(elem).offset().top;
  var BotOfElement = TopOfElement + $(elem).height();
  return ((BotOfElement <= BotViewPort) && (TopOfElement >= TopViewPort));
}

$(document).on('turbolinks:load', function(){
	var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
	var slideInDown = 'animated slideInDown';
	var slideInRight = 'animated slideInRight';
	var slideInLeft = 'animated slideInLeft';
	var fadeInUp = 'animated fadeInUp';
	var zoomIn = 'animated zoomIn';
	var fadeInDown = 'animated fadeInDown';
	var fadeIn = 'animated fadeIn';
	$('nav.navbar').addClass(slideInDown).one(animationEnd, function(){
		$('h1.display-3').addClass(fadeInUp).one(animationEnd, function(){
			$('.header p, .header a').each(function(){
				$(this).addClass(fadeInUp);
			});
		});
	});
	$('.card').each(function(){
		if(isScrolledIntoView(this) === true){
			$(this).addClass(fadeIn);
		}
	});
	$(window).scroll(function(){
		$('.display-4').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(fadeInUp);
			}
		});

		$('.cuisine, .category').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(fadeInDown);
			}
		});

		$('.team-member').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(zoomIn);
			}
		});

		$('.rightEntry').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(slideInRight);
			}
		});

		$('.leftEntry').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(slideInLeft);
			}
		});

		$('.fadeEntry').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(fadeInUp);
			}
		});

		$('.fa-social').each(function(){
			if(isScrolledIntoView(this) === true){
				$(this).addClass(zoomIn);
			}
		})
	});
});