
// This script manages all user interaction with the top blue navigation bar and its sub-menus

(function($){


// fix label function on iDevices ---------------------

	if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/iPad/i)) {
		

		$(document).ready(function () {
			$('label[for]').click(function () {
				
				var el = $(this).attr('for');
				if ($('#' + el + '[type=radio], #' + el + '[type=checkbox]').attr('selected', !$('#' + el).attr('selected'))) {
					return;
				} else {
					$('#' + el)[0].focus();
				}
			});
		});
	}

//END iDevice fix


$(document).ready(function () {	


//checkbox on/off fix ------------------------------------------
//turns unchecks other toggle checkboxes when one is checked
	
		$(".control-check").change(function(){
			var thisID = $(this).attr('id');

			$(".control-check").each(function(){
				if ($(this).attr('id') != thisID){
					$(this).attr('checked', false);
				}
			});
		});

//END checkbox on/off fix 


// --------------------------------------------------------------------------------------------------------------------- add dropdown arrows

		var addExpandIcons = function() {
			$('.expandable').each(function() {
				var text = $(this).prev().html();
				//text += '<span class="downArrow"></span>';
				text = '<div class="refineW">' + text + '</div>';
				$(this).prev().html(text);
				$(this).prev().append('<span class="expandicon customfont"> &#x21;</span>');
			});
		};
		addExpandIcons();
	
// --------------------------------------------------------------------------------------------------------------------- keyboard events

	//key index
		var key = {
			left: 37,
			right: 39,
			up: 38,
			down: 40,
			esc: 27,
			tab: 9,
			space: 32
		};

		//escape
		$(".blueBar").on('keydown',function(event) {
			if ( event.keyCode == key.esc ) {
				event.preventDefault();
				$(this).find('a:focus').blur();
				$('.expandable:visible').hide();
			}
		});


	//top level keypresses
		$(".blueBar > li > a").on('keydown',function(event) {

			if ( event.keyCode == key.left ) {
				event.preventDefault();
				$(this).parent().prev().children('a').focus();

			} else if ( event.keyCode == key.right ) {
				event.preventDefault();
				$(this).parent().next().children('a').focus();

			} else if ( event.keyCode == key.down ) {
				event.preventDefault();
				if ($(this).next().hasClass('expandable')) {
					$(this).next().find('a:first').focus();
				} else if ($(this).next('li')) {
					$(this).parent().next().find('a:first').focus();
				}
			} else if ( event.keyCode == key.space ) {
				event.preventDefault();
				if ($(this).next().hasClass('expandable')) {
					$(this).next().find('a:first').focus();
				}
			}
		});

	//sub-menu keypresses
		$(".expandable a").on('keydown',function(event) {

			if ( event.keyCode == key.left ) {
				event.preventDefault();
				$(this).parents('.expandable').parent().prev().children('a').focus();

			} else if ( event.keyCode == key.right ) {
				event.preventDefault();
				$(this).parents('.expandable').parent().next().children('a').focus();

			} else if ( event.keyCode == key.up ) {
				event.preventDefault();

				//are we going to a top-level or prev sub-menu item?
				if ($(this).parent().prev().length == 0) {
					//$(this).parents('.sub-menu').prev().focus();
					$(this).parent().parent().prev().focus();
				} else {
					$(this).parent().prev().children('a').focus();
				}

			} else if ( event.keyCode == key.down ) {
				event.preventDefault();
				if ($(this).parent().next().length == 0){
					$(this).parent().parent().parent().next().children('a').focus();
				} else {
					$(this).parent().next().children('a').focus();
			}
			
			} else if ( event.keyCode == key.space ) {
				event.preventDefault();
				$(this).next().find('a:first').focus();
			}

		});

// --------------------------------------------------------------------------------------------------------------------- hover/tab events

		var hasTouch = ('ontouchstart' in window) || window.DocumentTouch && document instanceof DocumentTouch;
	
		if (!hasTouch) {
			// hover or tab onto list item
			$('.blueBar  li').on('mouseenter focusin', function(e) {
				e.stopPropagation();
				// deactive and hide other menus and make this one active
				$(this).siblings().removeClass('active').children('.expandable').hide();
				$(this).siblings().children('.expandable').hide();
				$(this).addClass('active');
				$(this).closest('ul').removeClass('lostFocus');
				$(this).closest('ul').parent().closest('ul').addClass('lostFocus');


				// slide or show sub-menu depending on the media breakpoint
				//($(window).width() <= 620) ? $('.active .sub-menu').slideDown() : $('.active .sub-menu').css({'display': 'block', 'overflow': ''});
				($(window).width() <= 620) ? $('.active > .expandable').slideDown() : $('.active > .expandable').css({'display': 'block', 'overflow': ''});			
			});

			// mouse out of list item
			$('.blueBar  li').on('mouseleave', function() {
				$(this).removeClass('active').children('.expandable').hide();
				$(this).removeClass('onTop');
				$(this).children('.expandable').hide();
			});

			// tab out of last item in sub-menu
			$('.expandable').each(function() {
				$(this).children('li:last').keypress(function(event) {
					if (event.keyCode == key.tab) {
						$(this).parent('.expandable').hide();
					}
				});
			});

			// tab out of last top level item with no sub-menu
			$('#mainContent').on('focusin', function() {
				$('.blueBar  li').removeClass('active');
			});

			// if you're tabbed into a sub-menu and click somewhere else on the screen, hide it
			$("html:not(.blueBar)").on('click', function() {
				$('.expandable:visible').hide();
				$('.active').removeClass('active');
			});

			// Desktop Nav Realignment Events ----------------------------------------

			$('.blueBar ul').on('mouseenter focusin', function(e) {
				e.stopPropagation();
				//$(this).find('.active').closest
				//$(this).find('.active').removeClass('active');
				$(this).find('.lostFocus').removeClass('lostFocus');
				
				//onTop class for menu lvl priority view
				
				if (!$(this).parent().closest('ul').hasClass('blueBar')){
					//alert ("bah!");
					$(this).parent().closest('ul').addClass('lostFocus');
					
				} else {
					$(this).find('.lostFocus').removeClass('lostFocus');
				}
			});

			$('.blueBar ul').on('mouseleave', function(){
				//alert ("");
				//$(this).closest('.lostFocus').find('.lostFocus').removeClass('lostFocus');
				$(this).closest('.lostFocus').removeClass('lostFocus');
			});

			// mouse out of menus
			$('.blueBar').on('mouseleave', function() {
				$('.lostFocus').removeClass('lostFocus');
			});
			$('.blueBar').on('mouseenter focusin', function() {
				$('.lostFocus').removeClass('lostFocus');
			});



		} else {
	// --------------------------------------------------------------------------------------------------------------------- touch events


	//------------------------- touch screen devices -----------------------------------		
			// if you're in a sub-menu and click somewhere else on the screen, hide it
			// note html:not doesn't seem to work on touch devices
			$('#topBlackBar,#siteHeader,#mainContent,footer').on('click', function() {
				//alert ("");
				$('.blueBar ul').slideUp(100);
				$('.lostFocus').removeClass('lostFocus');
				$('.active').removeClass('active');
				$('.linkTO').remove();
			});

			// tap item to open
			$(document).on('click', '.blueBar .expandicon', function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				$(this).addClass('flipped');

				var liParent = $(this).closest('li');
				//make sure not already active
				if (!$(liParent).hasClass('active') && $(liParent).children().size() > 1){
					
					var check = true;
					$(liParent).find('li').each( function (index, element){
						if($(element).hasClass("active")) {
							check = false;
							return;
						}
					});

					if (check === true){

						$('li').removeClass('active');
						$(liParent).addClass('active');


							$('.blueBar .active').siblings().hide();
							//$('.active .sub-menu').slideDown();
							$('.active > .expandable').slideDown();
					}
				}

			});

			$(document).on('click', '.blueBar .flipped', function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				$(this).removeClass('flipped');
				$(this).closest('li').find('.flipped').removeClass('flipped');

				var liParent = $(this).closest('li');
				var activeItem;

				while (!$(liParent).hasClass('active')){
						activeItem = $('.blueBar').find('.active').parent().closest('li');
					
						$('.active > ul').hide();
						$('.active').siblings().slideDown();
						$('li').removeClass('active');
						$(activeItem).addClass('active');
				}
				activeItem = $('.blueBar').find('.active').parent().closest('li');

				$('.active > ul').hide();
				$('.active').siblings().slideDown();
				$('li').removeClass('active');


				$(activeItem).addClass('active');
			});

			$(document).on('click', '.blueBar li', function(e){
				var senderElement = e.target;
				//var senderClass = $(senderElement).prop('tagName');
				
				
				if (!$(senderElement).hasClass('expandicon')){
					//alert (senderClass);
					$('#main-nav-check').attr('checked', false);
				}
			});

		}


//------- fullsite forced on touch screen devices -----------------------------------
	if ($('html').hasClass('onMobile')){

		$(document).on('click', '.blueBar li', function(e){
				e.stopPropagation();
			if (!$(this).hasClass('active') && $(this).children().size() > 1){
			// stop from loading other pages if first click of element
				e.preventDefault();
			//adds to the start of the next ul to provide a clickable link
				var thisLI = $(this).clone();
					$(thisLI).find('.refineW').removeClass('refineW');
					$(thisLI).find('ul').remove();
					$(thisLI).addClass('linkTO');

				$(this).children('ul').prepend(thisLI);

			//adds active class, slides down nav window, closes other open nav menus
				$(this).siblings().removeClass('active').children('.expandable').hide();
				$(this).siblings().children('.expandable').hide();
				$(this).addClass('active');
				$('.active > .expandable').slideDown();

			//changes focus of nested nav menus
				if (!$(this).closest('ul').hasClass('blueBar')){	
					$(this).closest('ul').addClass('lostFocus');
					$('.lostFocus').css({'display': 'block', 'overflow': ''});
				}
			} else {
				//alert("1");
				//var getthis = $(this).closest('ul').attr('class');
				//alert (getthis);
				
				if ($(this).closest('ul').hasClass('lostFocus')){
					e.preventDefault();
				//stop from loading other pages if clicking on prev/out of focus menu
					e.preventDefault();
					e.stopPropagation();
				//remove that class
					$(this).closest('ul').removeClass('lostFocus');
					$(this).parent().find('ul').hide();
					$(this).parent().find('.lostFocus').removeClass('lostFocus').hide();
					$(this).parent().find('.active').removeClass('active');
					$(this).parent().find('.linkTO').remove();
					//$(this).removeClass('active');
				}

			}
		});
	}

	});

})(jQuery);