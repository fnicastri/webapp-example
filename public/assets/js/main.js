$(function() {

	//////////////////////////////////////////////////////////////////////////////

	// $('.class').on("click", function() {
	// 	$(this).something();
	// });

	//////////////////////////////////////////////////////////////////////////////
	// Slideshow

	$('.slideshow').unslider({
		autoplay: true,
		arrows: false,
		delay: 6000,
		speed: 750
	});

	$('.slideshow-procedures').unslider({
		autoplay: true,
		arrows: true,
		delay: 6000,
		speed: 750
	});

	//////////////////////////////////////////////////////////////////////////////
	// Navigation

	$('.hat .menu').click(function() {
		$('.hat').addClass('open');
		// $('.navigation').fadeIn();
		// $('.close').fadeIn();
		// $(this).fadeOut();
		$('body').addClass('noscroll');
	});

	$('.hat .close').click(function() {
		$('.hat').removeClass('open');
		// $('.navigation').fadeOut();
		// $('.menu').fadeIn();
		// $(this).fadeOut();
		$('body').removeClass('noscroll');
	});

	$(window).on('resize', function(){
		var win = $(this);
		if (win.width() >= 800) { // Responsive breakpoint
			$('.hat').removeClass('open');
			// $('.navigation').fadeIn();
			// $('.menu').fadeOut();
			// $('.close').fadeOut();
			$('body').removeClass('noscroll');
		}
		positionParallax();
	}).scroll(function() {
		positionParallax();
	});

	function positionParallax() {
		var windowScroll = $(window).scrollTop();
		var windowHeight = $(window).height();
		var windowBottom = windowScroll + windowHeight;
		$('.parallax').each(function(index) {
			var elementTop = $(this).offset().top;
			var elementHeight = $(this).width(); // Due to element rotation
			// console.log(windowScroll, windowHeight, windowBottom, elementTop, elementHeight);
			if(windowBottom > elementTop && windowScroll < (elementTop + elementHeight)){
				var elementAdjust = Math.round((windowBottom - elementTop) / 10); // 10 is the speed reduction factor
				$(this).css('top', elementAdjust);
			}
		});
	}

	positionParallax();

	//////////////////////////////////////////////////////////////////////////////
	// Form

	$("#requestFormSubmit").click(function() {
		$("#requestForm").submit();
	});

	//////////////////////////////////////////////////////////////////////////////
	// Read more

	$('.read-more').click(function(event) {
		event.preventDefault();
		$(this).hide().parent().find('.show-more').removeClass('hidden');
	});

	//////////////////////////////////////////////////////////////////////////////
	// Full bio

	$('.toggle-bio').click(function(event) {
		event.preventDefault();
		$(this).hide().parent().find('.short-bio').removeClass('short-bio');
	});

	//////////////////////////////////////////////////////////////////////////////
	// Map

	// When the window has finished loading create our google map below
	google.maps.event.addDomListener(window, 'load', init);

	function init() {
		// Basic options for a simple Google Map
		// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
		var mapOptions = {
			// How zoomed in you want the map to start at (always required)
			zoom: 17,

			// The latitude and longitude to center the map (always required)
			center: new google.maps.LatLng(40.709960, -73.934905),

			// How you would like to style the map.
			// This is where you would paste any style found on Snazzy Maps.
			styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#dbdbdb"},{"visibility":"on"}]}]
		};

		// Get the HTML DOM element that will contain your map
		// We are using a div with id="map" seen below in the <body>
		var mapElement = document.getElementById('map');

		// Create the Google Map using our element and options defined above
		var map = new google.maps.Map(mapElement, mapOptions);

		// Let's also add a marker while we're at it
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(40.709960, -73.934905),
			map: map,
			title: 'Our Office',
			icon: pinSymbol("#4CA6DE")
		});

		map.setOptions({
			draggable: false,
			zoomControl: false,
			scrollwheel: false,
			disableDoubleClickZoom: true,
			streetViewControl: false,
			disableDefaultUI: true
		});

		google.maps.event.addDomListener(window, "resize", function() {
			var center = map.getCenter();
			google.maps.event.trigger(map, "resize");
			map.setCenter(center);
		});
	}

	function pinSymbol(color) {
		return {
			path: 'M 0,0 C -2,-20 -10,-22 -10,-30 A 10,10 0 1,1 10,-30 C 10,-22 2,-20 0,0 z M -2,-30 a 2,2 0 1,1 4,0 2,2 0 1,1 -4,0',
			fillColor: color,
			fillOpacity: 1,
			strokeColor: '#4CA6DE',
			strokeWeight: 2,
			scale: 1,
		};
	}

	//////////////////////////////////////////////////////////////////////////////
	// Cookie handling

	function createCookie(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}

	function readCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}

	function eraseCookie(name) {
		createCookie(name,"",-1);
	}

	//////////////////////////////////////////////////////////////////////////////

});