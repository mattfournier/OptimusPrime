/*

This is the main javascript file of the budget template
add files in the order they should be included 

	ie. if a file uses functions/variables from another, that one should come first

files should not be minified, this will happen when the file is compiled and can create errors
wrap file contents in functions or be VERY careful when declaring global variables.

Codekit can recognize the commented out code. 
*/

/* Third party files ------------------------------------------------------ */

//@codekit-prepend "../libs/html5shiv.js"			//HTML5 compatability for older browsers
//@codekit-prepend "../libs/html5-printshiv.js"		//HTML5 print compatability for older browsers
//@codekit-prepent "lte-ie7.js"						//custom font support via icomoon in ie6 and 7
//@codekit-prepend "lightbox.js"					
//@codekit-prepend "Slidshow.js"	
//@codekit-prepend "../libs/debouncedresize.js"			//resize even that doesn't constantly fire
//@codekit-prepend "jshowoff.js"
//@codekit-prepend "backtotop.jquery.js"			//controls the -currently removed- back to top black bar in mobile nav

/* Our files ---------------------------------------------------- */

//@codekit-prepend "helpers.js" 					// useful functions like detect browsers, etc
//@codekit-prepend "content.js" 					// applies to content
//@codekit-prepend "menu.js"						// applies to navigation menus



//THIS IS THE MAIN DOCUMENT READY FUNCTION -
(function($){

	$(document).ready(function(){

	contentWhenDocReady();


	});
})(jQuery);