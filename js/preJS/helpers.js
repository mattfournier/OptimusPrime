//// HELPER FUNCTIONS
//  getCookie
//  setCookie
//
////

// Args: cookie_name
// Return: contents of cookie
function getCookie(cookie_name) {
	var i, x, y, ARRcookies = document.cookie.split(";");
	for (i = 0; i < ARRcookies.length; i++) {
		x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
		y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
		x = x.replace(/^\s+|\s+$/g, "");
		if (x == cookie_name) {
			return unescape(y);
		}
	}
}

// Args: name of cookie, value of cookie, and the number of days until the cookie expires
// NO return
function setCookie(cookie_name, value, exdays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookie_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
	document.cookie = cookie_name + "=" + cookie_value;
}

function isFrench() {
	var loc = window.location.href;
	if (loc.indexOf("-fra") != -1) {
		setCookie("isFrench",true,60);
		return true;
	} else if (loc.indexOf("-eng") != -1) {
		setCookie("isFrench",false,60);
		return false;
	}
}

// function DetectWebkit() {
// if (navigator && navigator.userAgent)
//    uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("webkit") > -1)
//       return true;
//    else
//       return false;
// }

// function DetectIpad() {
//    uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("ipad") > -1  && DetectWebkit())
//       return true;
//    else
//       return false;
// }

// function DetectIphoneOrIpod() {
//    uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("iphone") > -1 ||
//        uagent.search("ipod") > -1)
//        return true;
//     else
//        return false;
// }

// function DetectIos() {
//    if (DetectIphoneOrIpod() || DetectIpad())
//       return true;
//    else
//       return false;
// }

// function DetectAndroid() {
// 	uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("android") > -1)
//       return true;
//    else
//       return false;
// }

// function DetectBlackBerry() {
// 	uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("blackberry") > -1)
//       return true;
//    else
//       return false;
// }

function DetectDesktop() {
   uagent = navigator.userAgent.toLowerCase();
   if (	(uagent.search("windows") > -1 ||
		(uagent.search("linux") > -1 && uagent.search("android") == -1) ||
		uagent.search(/os\s\w\s\d\d.\d/) > -1 ||
		uagent.search("solaris") > -1 ||
    	uagent.search("bsd") > -1)
    	&& uagent.search("htc") == -1)
       return true;
    else
       return false;
}

function isTouchDevice(){
    try{
        document.createEvent("TouchEvent");
        return true;
    }catch(e){
        return false;
    }
}

function touchScroll(SpeechText){
	if(isTouchDevice()){ //if touch events exist...
		var el=document.getElementById(SpeechText);
		var scrollStartPos=0;
 
		document.getElementById(SpeechText).addEventListener("touchstart", function(event) {
			scrollStartPos=this.scrollTop+event.touches[0].pageY;
			event.preventDefault();
		},false);
 
		document.getElementById(SpeechText).addEventListener("touchmove", function(event) {
			this.scrollTop=scrollStartPos-event.touches[0].pageY;
			event.preventDefault();
		},false);
	}
}
// function DetectIE7() {
//    uagent = navigator.userAgent.toLowerCase();
//    if (uagent.search("msie 7") > -1)
//        return true;
//     else
//        return false;
// }