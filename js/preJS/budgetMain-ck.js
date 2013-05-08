/**
* @preserve HTML5 Shiv v3.6.2 | @afarkas @jdalton @jon_neal @rem | MIT/GPL2 Licensed
*/function getPageScroll(){var e;self.pageYOffset?e=self.pageYOffset:document.documentElement&&document.documentElement.scrollTop?e=document.documentElement.scrollTop:document.body&&(e=document.body.scrollTop);arrayPageScroll=new Array("",e);return arrayPageScroll}function getPageSize(){var e,t;if(window.innerHeight&&window.scrollMaxY){e=document.body.scrollWidth;t=window.innerHeight+window.scrollMaxY}else if(document.body.scrollHeight>document.body.offsetHeight){e=document.body.scrollWidth;t=document.body.scrollHeight}else{e=document.body.offsetWidth;t=document.body.offsetHeight}var n,r;if(self.innerHeight){n=self.innerWidth;r=self.innerHeight}else if(document.documentElement&&document.documentElement.clientHeight){n=document.documentElement.clientWidth;r=document.documentElement.clientHeight}else if(document.body){n=document.body.clientWidth;r=document.body.clientHeight}t<r?pageHeight=r:pageHeight=t;e<n?pageWidth=n:pageWidth=e;arrayPageSize=new Array(pageWidth,pageHeight,n,r);return arrayPageSize}function pause(e){var t=new Date,n=t.getTime()+e;for(;;){t=new Date;if(t.getTime()>n)return}}function getKey(e){e==null?keycode=event.keyCode:keycode=e.which;key=String.fromCharCode(keycode).toLowerCase();key=="x"&&hideLightbox()}function listenKey(){document.onkeypress=getKey}function showLightbox(e){var t=document.getElementById("overlay"),n=document.getElementById("lightbox"),r=document.getElementById("lightboxCaption"),s=document.getElementById("lightboxImage"),o=document.getElementById("loadingImage"),u=document.getElementById("lightboxDetails"),a=getPageSize(),f=getPageScroll();if(o){o.style.top=f[1]+(a[3]-35-o.height)/2+"px";o.style.left=(a[0]-20-o.width)/2+"px";o.style.display="block"}t.style.height=a[1]+"px";t.style.display="block";imgPreload=new Image;imgPreload.onload=function(){s.src=e.href;var l=f[1]+(a[3]-35-imgPreload.height)/2,c=(a[0]-20-imgPreload.width)/2;n.style.top=l<0?"0px":l+"px";n.style.left=c<0?"0px":c+"px";u.style.width=imgPreload.width+"px";if(e.getAttribute("title")){r.style.display="block";r.innerHTML=e.getAttribute("title")}else r.style.display="none";navigator.appVersion.indexOf("MSIE")!=-1&&pause(250);o&&(o.style.display="none");selects=document.getElementsByTagName("select");for(i=0;i!=selects.length;i++)selects[i].style.visibility="hidden";n.style.display="block";a=getPageSize();t.style.height=a[1]+"px";listenKey();return!1};imgPreload.src=e.href}function hideLightbox(){objOverlay=document.getElementById("overlay");objLightbox=document.getElementById("lightbox");objOverlay.style.display="none";objLightbox.style.display="none";selects=document.getElementsByTagName("select");for(i=0;i!=selects.length;i++)selects[i].style.visibility="visible";document.onkeypress=""}function initLightbox(){if(!document.getElementsByTagName)return;var e=document.getElementsByTagName("a");for(var t=0;t<e.length;t++){var n=e[t];n.getAttribute("href")&&n.getAttribute("rel")=="lightbox"&&(n.onclick=function(){showLightbox(this);return!1})}var r=document.getElementsByTagName("body").item(0),i=document.createElement("div");i.setAttribute("id","overlay");i.onclick=function(){hideLightbox();return!1};i.style.display="none";i.style.position="absolute";i.style.top="0";i.style.left="0";i.style.zIndex="90";i.style.width="100%";r.insertBefore(i,r.firstChild);var s=getPageSize(),o=getPageScroll(),u=new Image;u.onload=function(){var e=document.createElement("a");e.setAttribute("href","#");e.onclick=function(){hideLightbox();return!1};i.appendChild(e);var t=document.createElement("img");t.src=loadingImage;t.setAttribute("id","loadingImage");t.style.position="absolute";t.style.zIndex="150";e.appendChild(t);u.onload=function(){};return!1};u.src=loadingImage;var a=document.createElement("div");a.setAttribute("id","lightbox");a.style.display="none";a.style.position="absolute";a.style.zIndex="100";r.insertBefore(a,i.nextSibling);var f=document.createElement("a");f.setAttribute("href","#");f.setAttribute("title","Click to close");f.onclick=function(){hideLightbox();return!1};a.appendChild(f);var l=new Image;l.onload=function(){var e=document.createElement("img");e.src=closeButton;e.setAttribute("id","closeButton");e.style.position="absolute";e.style.zIndex="200";f.appendChild(e);return!1};l.src=closeButton;var c=document.createElement("img");c.setAttribute("id","lightboxImage");f.appendChild(c);var h=document.createElement("div");h.setAttribute("id","lightboxDetails");a.appendChild(h);var p=document.createElement("div");p.setAttribute("id","lightboxCaption");p.style.display="none";h.appendChild(p);var d=document.createElement("div");d.setAttribute("id","keyboardMsg");d.innerHTML='press <a href="#" onclick="hideLightbox(); return false;"><kbd>x</kbd></a> to close';h.appendChild(d)}function addLoadEvent(e){var t=window.onload;typeof window.onload!="function"?window.onload=e:window.onload=function(){t();e()}}function getCookie(e){var t,n,r,i=document.cookie.split(";");for(t=0;t<i.length;t++){n=i[t].substr(0,i[t].indexOf("="));r=i[t].substr(i[t].indexOf("=")+1);n=n.replace(/^\s+|\s+$/g,"");if(n==e)return unescape(r)}}function setCookie(e,t,n){var r=new Date;r.setDate(r.getDate()+n);var i=escape(t)+(n==null?"":"; expires="+r.toUTCString());document.cookie=e+"="+i}function isFrench(){var e=window.location.href;if(e.indexOf("-fra")!=-1){setCookie("isFrench",!0,60);return!0}if(e.indexOf("-eng")!=-1){setCookie("isFrench",!1,60);return!1}}function DetectDesktop(){uagent=navigator.userAgent.toLowerCase();return(uagent.search("windows")>-1||uagent.search("linux")>-1&&uagent.search("android")==-1||uagent.search(/os\s\w\s\d\d.\d/)>-1||uagent.search("solaris")>-1||uagent.search("bsd")>-1)&&uagent.search("htc")==-1?!0:!1}function isTouchDevice(){try{document.createEvent("TouchEvent");return!0}catch(e){return!1}}function touchScroll(e){if(isTouchDevice()){var t=document.getElementById(e),n=0;document.getElementById(e).addEventListener("touchstart",function(e){n=this.scrollTop+e.touches[0].pageY;e.preventDefault()},!1);document.getElementById(e).addEventListener("touchmove",function(e){this.scrollTop=n-e.touches[0].pageY;e.preventDefault()},!1)}}function resizeDoubleCols(){$(".doubleBox").each(function(){var e=$(this).children(".leftCol").children("header").css("height","auto").height(),t=$(this).children(".rightCol").children("header").css("height","auto").height(),n=Math.max(e,t);$(this).children(".leftCol").children("header").css("height",n+"px");$(this).children(".rightCol").children("header").css("height",n+"px")})}function resizeDoubleCharts(){$(".twoColChart").each(function(){var e=$(this).children(".leftChart").children("span").css("height","auto").height(),t=$(this).children(".rightChart").children("span").css("height","auto").height(),n=Math.max(e,t);$(this).children(".leftChart").children("span").css("height",n+"px");$(this).children(".rightChart").children("span").css("height",n+"px");e=$(this).children(".leftChart").children("figcaption").css("height","auto").height();t=$(this).children(".rightChart").children("figcaption").css("height","auto").height();n=Math.max(e,t);$(this).children(".leftChart").children("figcaption").css("height",n+"px");$(this).children(".rightChart").children("figcaption").css("height",n+"px")})}function persistentSideNav(){}function getScrollOffsets(e){e=e||window;if(e.pageXOffset!=null)return e.pageYOffset;var t=e.document;return document.compatMode=="CSS1Compat"?t.documentElement.scrollTop:t.body.scrollTop}function contentWhenDocReady(){$(function(){$(window).scroll(function(){persistentSideNav()}).trigger("scroll")});$("a[href*='.pdf'], a[href*='.doc'], a[href*='.xls'], a[href*='.ppt']").click(function(){_gaq.push(["_trackPageview","/doc/"+$(this).attr("href")])});$("a[href*='.zip']").click(function(){_gaq.push(["_trackPageview","/file/"+$(this).attr("href")])});$(document).on("click","a.lang",function(e){e.preventDefault();var t=window.location.pathname,n="",r="eng.html",i="fra.html";t.search(r)>-1?n=t.replace(r,i):n=t.replace(i,r);window.location.href=n});$(window).on("debouncedresize",function(){$(".magic").css("display","block");$(".Arrow").addClass("rotate");resizeDoubleCharts();resizeDoubleCols()});$("html").hasClass("ie7")&&$("#mainContent a[href^='http://www']").each(function(){$(this).after("<span class='extLink'>&nbsp;</span>")});$(".Arrow").click(function(e){e.preventDefault();var t=$(this).attr("href");if($(this).hasClass("rotate")){$(this).removeClass("rotate");$("#"+t).css("display","none")}else{$(this).addClass("rotate");$("#"+t).css("display","block")}})}(function(e,t){function c(e,t){var n=e.createElement("p"),r=e.getElementsByTagName("head")[0]||e.documentElement;n.innerHTML="x<style>"+t+"</style>";return r.insertBefore(n.lastChild,r.firstChild)}function h(){var e=y.elements;return typeof e=="string"?e.split(" "):e}function p(e){var t=f[e[u]];if(!t){t={};a++;e[u]=a;f[a]=t}return t}function d(e,n,r){n||(n=t);if(l)return n.createElement(e);r||(r=p(n));var o;r.cache[e]?o=r.cache[e].cloneNode():s.test(e)?o=(r.cache[e]=r.createElem(e)).cloneNode():o=r.createElem(e);return o.canHaveChildren&&!i.test(e)?r.frag.appendChild(o):o}function v(e,n){e||(e=t);if(l)return e.createDocumentFragment();n=n||p(e);var r=n.frag.cloneNode(),i=0,s=h(),o=s.length;for(;i<o;i++)r.createElement(s[i]);return r}function m(e,t){if(!t.cache){t.cache={};t.createElem=e.createElement;t.createFrag=e.createDocumentFragment;t.frag=t.createFrag()}e.createElement=function(n){return y.shivMethods?d(n,e,t):t.createElem(n)};e.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+h().join().replace(/\w+/g,function(e){t.createElem(e);t.frag.createElement(e);return'c("'+e+'")'})+");return n}")(y,t.frag)}function g(e){e||(e=t);var n=p(e);y.shivCSS&&!o&&!n.hasCSS&&(n.hasCSS=!!c(e,"article,aside,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}"));l||m(e,n);return e}var n="3.6.2",r=e.html5||{},i=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,s=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,o,u="_html5shiv",a=0,f={},l;(function(){try{var e=t.createElement("a");e.innerHTML="<xyz></xyz>";o="hidden"in e;l=e.childNodes.length==1||function(){t.createElement("a");var e=t.createDocumentFragment();return typeof e.cloneNode=="undefined"||typeof e.createDocumentFragment=="undefined"||typeof e.createElement=="undefined"}()}catch(n){o=!0;l=!0}})();var y={elements:r.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup main mark meter nav output progress section summary template time video",version:n,shivCSS:r.shivCSS!==!1,supportsUnknownElements:l,shivMethods:r.shivMethods!==!1,type:"default",shivDocument:g,createElement:d,createDocumentFragment:v};e.html5=y;g(t)})(this,document);var loadingImage="loading.gif",closeButton="close.gif";addLoadEvent(initLightbox);(function(e){e.fn.jshowoff=function(t){var n={animatePause:!0,autoPlay:!0,changeSpeed:600,controls:!0,controlText:{play:"Play",pause:"Pause",next:"Next",previous:"Previous"},effect:"fade",hoverPause:!0,links:!0,speed:3e3};t&&e.extend(!0,n,t);if(n.speed<n.changeSpeed+20){alert("jShowOff: Make speed at least 20ms longer than changeSpeed; the fades aren't always right on time.");return this}this.each(function(t){function h(t,i){var s=o;if(o>=t.length||i>=t.length){o=0;var u=!0}else if(o<0||i<0){o=t.length-1;var a=!0}else o=i;if(n.effect=="slideLeft"){var l,c;function h(e){l=e=="right"?"left":"right";c=e=="left"?"left":"right"}o>=s?h("left"):h("right");e(t[o]).clone().appendTo(r).slideIt({direction:l,changeSpeed:n.changeSpeed});r.children().length>1&&r.children().eq(0).css("position","absolute").slideIt({direction:c,showHide:"hide",changeSpeed:n.changeSpeed},function(){e(this).remove()})}else if(n.effect=="fade"){e(t[o]).clone().appendTo(r).hide().fadeIn(n.changeSpeed,function(){e.browser.msie&&this.style.removeAttribute("filter")});r.children().length>1&&r.children().eq(0).css("position","absolute").fadeOut(n.changeSpeed,function(){e(this).remove()})}else if(n.effect=="none"){e(t[o]).clone().appendTo(r);r.children().length>1&&r.children().eq(0).css("position","absolute").remove()}if(n.links){e("."+f+"-active").removeClass(f+"-active jshowoff-active");e("."+f+"-slidelinks a").eq(o).addClass(f+"-active jshowoff-active")}}function p(){return e("."+f+"-play").hasClass("jshowoff-paused")?!1:!0}function d(t){if(!y()){o++;h(i,o);if(t=="hover"||!p())s=setInterval(function(){d()},n.speed);p()||e("."+f+"-play").text(n.controlText.pause).removeClass("jshowoff-paused "+f+"-paused")}}function v(t){clearInterval(s);(!t||t=="playBtn")&&e("."+f+"-play").text(n.controlText.play).addClass("jshowoff-paused "+f+"-paused");n.animatePause&&t=="playBtn"&&e('<p class="'+f+'-pausetext jshowoff-pausetext">'+n.controlText.pause+"</p>").css({fontSize:"62%",textAlign:"center",position:"absolute",top:"40%",lineHeight:"100%",width:"100%"}).appendTo(c).addClass(f+"pauseText").animate({fontSize:"600%",top:"30%",opacity:0},{duration:500,complete:function(){e(this).remove()}})}function m(){b(o+1)}function g(){b(o-1)}function y(){return r.children().length>1?!0:!1}function b(e){r.children().stop(!0,!0);if(o!=e||o==e&&y()){y()&&r.children().eq(0).remove();h(i,e);v()}}function w(){e(i).each(function(t){e(this).find("img").each(function(t){u[t]=e("<img>").attr("src",e(this).attr("src"))})})}function E(){c.append('<p class="jshowoff-controls '+f+'-controls"><a class="jshowoff-play '+f+'-play" href="#null">'+n.controlText.pause+'</a> <a class="jshowoff-prev '+f+'-prev" href="#null">'+n.controlText.previous+'</a> <a class="jshowoff-next '+f+'-next" href="#null">'+n.controlText.next+"</a></p>");e("."+f+"-controls a").each(function(){e(this).hasClass("jshowoff-play")&&e(this).click(function(){p()?v("playBtn"):d();return!1});e(this).hasClass("jshowoff-prev")&&e(this).click(function(){g();return!1});e(this).hasClass("jshowoff-next")&&e(this).click(function(){m();return!1})})}function S(){c.append('<p class="jshowoff-slidelinks '+f+'-slidelinks"></p>');e.each(i,function(t,n){var r=e(this).attr("title")!=""?e(this).attr("title"):t+1;e('<a class="jshowoff-slidelink-'+t+" "+f+"-slidelink-"+t+'" href="#null">'+r+"</a>").bind("click",{index:t},function(e){b(e.data.index);return!1}).appendTo("."+f+"-slidelinks")})}var r=e(this),i=e(this).children().remove(),s="",o=0,u=[],a=e(".jshowoff").length+1,f="jshowoff-"+a,l=n.cssClass!=undefined?n.cssClass:"";r.css("position","relative").wrap('<div class="jshowoff '+f+'" />');var c=e("."+f);c.css("position","relative").addClass(l);e(i[0]).clone().appendTo(r);w();if(n.controls){E();n.autoPlay==0&&e("."+f+"-play").addClass(f+"-paused jshowoff-paused").text(n.controlText.play)}if(n.links){S();e("."+f+"-slidelinks a").eq(0).addClass(f+"-active jshowoff-active")}n.hoverPause&&r.hover(function(){p()&&v("hover")},function(){p()&&d("hover")});n.autoPlay&&i.length>1&&(s=setInterval(function(){d()},n.speed));i.length<1&&e("."+f).append("<p>For jShowOff to work, the container element must have child elements.</p>")});return this}})(jQuery);(function(e){e.fn.slideIt=function(t,n){var r={direction:"left",showHide:"show",changeSpeed:600};t&&e.extend(r,t);this.each(function(t){e(this).css({left:"auto",right:"auto",top:"auto",bottom:"auto"});var i=r.direction=="left"||r.direction=="right"?e(this).outerWidth():e(this).outerHeight(),s={};s.position=e(this).css("position")=="static"?"relative":e(this).css("position");s[r.direction]=r.showHide=="show"?"-"+i+"px":0;var o={};o[r.direction]=r.showHide=="show"?0:"-"+i+"px";e(this).css(s).animate(o,r.changeSpeed,n)});return this}})(jQuery);(function(e){e.fn.jshowoff=function(t){var n={animatePause:!0,autoPlay:!0,changeSpeed:600,controls:!0,controlText:{play:'"',pause:"#",next:"&",previous:"@"},effect:"fade",hoverPause:!0,links:!0,speed:3e3};t&&e.extend(!0,n,t);if(n.speed<n.changeSpeed+20){alert("jShowOff: Make speed at least 20ms longer than changeSpeed; the fades aren't always right on time.");return this}this.each(function(t){function h(t,i){var s=o;if(o>=t.length||i>=t.length){o=0;var u=!0}else if(o<0||i<0){o=t.length-1;var a=!0}else o=i;if(n.effect=="slideLeft"){var l,c;function h(e){l=e=="right"?"left":"right";c=e=="left"?"left":"right"}o>=s?h("left"):h("right");e(t[o]).clone().appendTo(r).slideIt({direction:l,changeSpeed:n.changeSpeed});r.children().length>1&&r.children().eq(0).css("position","absolute").slideIt({direction:c,showHide:"hide",changeSpeed:n.changeSpeed},function(){e(this).remove()})}else if(n.effect=="fade"){e(t[o]).clone().appendTo(r).hide().fadeIn(n.changeSpeed,function(){e.browser.msie&&this.style.removeAttribute("filter")});r.children().length>1&&r.children().eq(0).css("position","absolute").fadeOut(n.changeSpeed,function(){e(this).remove()})}else if(n.effect=="none"){e(t[o]).clone().appendTo(r);r.children().length>1&&r.children().eq(0).css("position","absolute").remove()}if(n.links){e("."+f+"-active").removeClass(f+"-active jshowoff-active");e("."+f+"-slidelinks a").eq(o).addClass(f+"-active jshowoff-active")}}function p(){return e("."+f+"-play").hasClass("jshowoff-paused")?!1:!0}function d(t){if(!y()){o++;h(i,o);if(t=="hover"||!p())s=setInterval(function(){d()},n.speed);p()||e("."+f+"-play").text(n.controlText.pause).removeClass("jshowoff-paused "+f+"-paused")}}function v(t){clearInterval(s);(!t||t=="playBtn")&&e("."+f+"-play").text(n.controlText.play).addClass("jshowoff-paused "+f+"-paused");n.animatePause&&t=="playBtn"&&e('<p class="'+f+'-pausetext jshowoff-pausetext">'+n.controlText.pause+"</p>").css({fontSize:"62%",textAlign:"center",position:"absolute",top:"40%",lineHeight:"100%",width:"100%"}).appendTo(c).addClass(f+"pauseText").animate({fontSize:"600%",top:"30%",opacity:0},{duration:500,complete:function(){e(this).remove()}})}function m(){b(o+1)}function g(){b(o-1)}function y(){return r.children().length>1?!0:!1}function b(e){r.children().stop(!0,!0);if(o!=e||o==e&&y()){y()&&r.children().eq(0).remove();h(i,e);v()}}function w(){e(i).each(function(t){e(this).find("img").each(function(t){u[t]=e("<img>").attr("src",e(this).attr("src"))})})}function E(){c.append('<p class="jshowoff-controls '+f+'-controls"><a class="jshowoff-play '+f+'-play" href="#null">'+n.controlText.pause+'</a> <a class="jshowoff-prev '+f+'-prev" href="#null">'+n.controlText.previous+'</a> <a class="jshowoff-next '+f+'-next" href="#null">'+n.controlText.next+"</a></p>");e("."+f+"-controls a").each(function(){e(this).hasClass("jshowoff-play")&&e(this).click(function(){p()?v("playBtn"):d();return!1});e(this).hasClass("jshowoff-prev")&&e(this).click(function(){g();return!1});e(this).hasClass("jshowoff-next")&&e(this).click(function(){m();return!1})})}function S(){c.append('<p class="jshowoff-slidelinks '+f+'-slidelinks"></p>');e.each(i,function(t,n){var r=e(this).attr("title")!=""?e(this).attr("title"):t+1;e('<a class="jshowoff-slidelink-'+t+" "+f+"-slidelink-"+t+'" href="#null">'+r+"</a>").bind("click",{index:t},function(e){b(e.data.index);return!1}).appendTo("."+f+"-slidelinks")})}var r=e(this),i=e(this).children().remove(),s="",o=0,u=[],a=e(".jshowoff").length+1,f="jshowoff-"+a,l=n.cssClass!=undefined?n.cssClass:"";r.css("position","relative").wrap('<div class="jshowoff '+f+'" />');var c=e("."+f);c.css("position","relative").addClass(l);e(i[0]).clone().appendTo(r);w();if(n.controls){E();n.autoPlay==0&&e("."+f+"-play").addClass(f+"-paused jshowoff-paused").text(n.controlText.play)}if(n.links){S();e("."+f+"-slidelinks a").eq(0).addClass(f+"-active jshowoff-active")}n.hoverPause&&r.hover(function(){p()&&v("hover")},function(){p()&&d("hover")});n.autoPlay&&i.length>1&&(s=setInterval(function(){d()},n.speed));i.length<1&&e("."+f).append("<p>For jShowOff to work, the container element must have child elements.</p>")});return this}})(jQuery);(function(e){e.fn.slideIt=function(t,n){var r={direction:"left",showHide:"show",changeSpeed:600};t&&e.extend(r,t);this.each(function(t){e(this).css({left:"auto",right:"auto",top:"auto",bottom:"auto"});var i=r.direction=="left"||r.direction=="right"?e(this).outerWidth():e(this).outerHeight(),s={};s.position=e(this).css("position")=="static"?"relative":e(this).css("position");s[r.direction]=r.showHide=="show"?"-"+i+"px":0;var o={};o[r.direction]=r.showHide=="show"?0:"-"+i+"px";e(this).css(s).animate(o,r.changeSpeed,n)});return this}})(jQuery);(function(e){e.fn.backtotop=function(t){var n=this,r=e.extend({position:1e3,speed:500,toTop:500},t),i=r.position,s=r.speed,o=r.toTop;e(window).scroll(function(){var t=e(window).scrollTop();t>=i?n.fadeIn(s):n.fadeOut(s)});n.click(function(){e("html, body").animate({scrollTop:0},o)})}})(jQuery);(function(e){e(window).width()<=620&&e("#backtotop").backtotop({position:26,speed:0,toTop:500});resizeDoubleCharts();resizeDoubleCols();e("#fullSite").click(function(){setCookie("fullSite","full",365);window.location.reload()});e(document).on("click","#mobileSite",function(){var e=new Date;setCookie("fullSite","",e-3600);window.location.reload()});getCookie("fullSite")=="full"&&(isFrench()?e(".deskTopUl").prepend('<li><a href="#" id="mobileSite">Site Mobile</a>&nbsp;|&nbsp;</li>'):e(".deskTopUl").prepend('<li><a href="#" id="mobileSite">Mobile Site</a>&nbsp;|&nbsp;</li>'));if(e("#sideNav").hasClass("autopop")){var t=1,n='<ul class="leftToc">';e("#subpageContent :header").each(function(){var r=e(this)[0].tagName.substring(1);if(!e(this).attr("href")){while(r>t){n=n.substr(0,n.length-5)+"<ul>";t++}while(r<t){n+="</ul></li>";t--}if(r==t){anchorTitle=e(this).children("a").html();anchorHREF=e(this).children("a").attr("id");n+='<li><a href="#'+anchorHREF+'"> '+anchorTitle+"</a></li>"}}});e("#sideNav").prepend(n)}})(jQuery);(function(e){(navigator.userAgent.match(/iPhone/i)||navigator.userAgent.match(/iPod/i)||navigator.userAgent.match(/iPad/i))&&e(document).ready(function(){e("label[for]").click(function(){var t=e(this).attr("for");if(e("#"+t+"[type=radio], #"+t+"[type=checkbox]").attr("selected",!e("#"+t).attr("selected")))return;e("#"+t)[0].focus()})});e(document).ready(function(){e(".control-check").change(function(){var t=e(this).attr("id");e(".control-check").each(function(){e(this).attr("id")!=t&&e(this).attr("checked",!1)})});var t=function(){e(".expandable").each(function(){var t=e(this).prev().html();t='<div class="refineW">'+t+"</div>";e(this).prev().html(t);e(this).prev().append('<span class="expandicon customfont"> &#x21;</span>')})};t();var n={left:37,right:39,up:38,down:40,esc:27,tab:9,space:32};e(".blueBar").on("keydown",function(t){if(t.keyCode==n.esc){t.preventDefault();e(this).find("a:focus").blur();e(".expandable:visible").hide()}});e(".blueBar > li > a").on("keydown",function(t){if(t.keyCode==n.left){t.preventDefault();e(this).parent().prev().children("a").focus()}else if(t.keyCode==n.right){t.preventDefault();e(this).parent().next().children("a").focus()}else if(t.keyCode==n.down){t.preventDefault();e(this).next().hasClass("expandable")?e(this).next().find("a:first").focus():e(this).next("li")&&e(this).parent().next().find("a:first").focus()}else if(t.keyCode==n.space){t.preventDefault();e(this).next().hasClass("expandable")&&e(this).next().find("a:first").focus()}});e(".expandable a").on("keydown",function(t){if(t.keyCode==n.left){t.preventDefault();e(this).parents(".expandable").parent().prev().children("a").focus()}else if(t.keyCode==n.right){t.preventDefault();e(this).parents(".expandable").parent().next().children("a").focus()}else if(t.keyCode==n.up){t.preventDefault();e(this).parent().prev().length==0?e(this).parent().parent().prev().focus():e(this).parent().prev().children("a").focus()}else if(t.keyCode==n.down){t.preventDefault();e(this).parent().next().length==0?e(this).parent().parent().parent().next().children("a").focus():e(this).parent().next().children("a").focus()}else if(t.keyCode==n.space){t.preventDefault();e(this).next().find("a:first").focus()}});var r="ontouchstart"in window||window.DocumentTouch&&document instanceof DocumentTouch;if(!r){e(".blueBar  li").on("mouseenter focusin",function(t){t.stopPropagation();e(this).siblings().removeClass("active").children(".expandable").hide();e(this).siblings().children(".expandable").hide();e(this).addClass("active");e(this).closest("ul").removeClass("lostFocus");e(this).closest("ul").parent().closest("ul").addClass("lostFocus");e(window).width()<=620?e(".active > .expandable").slideDown():e(".active > .expandable").css({display:"block",overflow:""})});e(".blueBar  li").on("mouseleave",function(){e(this).removeClass("active").children(".expandable").hide();e(this).removeClass("onTop");e(this).children(".expandable").hide()});e(".expandable").each(function(){e(this).children("li:last").keypress(function(t){t.keyCode==n.tab&&e(this).parent(".expandable").hide()})});e("#mainContent").on("focusin",function(){e(".blueBar  li").removeClass("active")});e("html:not(.blueBar)").on("click",function(){e(".expandable:visible").hide();e(".active").removeClass("active")});e(".blueBar ul").on("mouseenter focusin",function(t){t.stopPropagation();e(this).find(".lostFocus").removeClass("lostFocus");e(this).parent().closest("ul").hasClass("blueBar")?e(this).find(".lostFocus").removeClass("lostFocus"):e(this).parent().closest("ul").addClass("lostFocus")});e(".blueBar ul").on("mouseleave",function(){e(this).closest(".lostFocus").removeClass("lostFocus")});e(".blueBar").on("mouseleave",function(){e(".lostFocus").removeClass("lostFocus")});e(".blueBar").on("mouseenter focusin",function(){e(".lostFocus").removeClass("lostFocus")})}else{e("#topBlackBar,#siteHeader,#mainContent,footer").on("click",function(){e(".blueBar ul").slideUp(100);e(".lostFocus").removeClass("lostFocus");e(".active").removeClass("active");e(".linkTO").remove()});e(document).on("click",".blueBar .expandicon",function(t){t.preventDefault();t.stopPropagation();e(this).addClass("flipped");var n=e(this).closest("li");if(!e(n).hasClass("active")&&e(n).children().size()>1){var r=!0;e(n).find("li").each(function(t,n){if(e(n).hasClass("active")){r=!1;return}});if(r===!0){e("li").removeClass("active");e(n).addClass("active");e(".blueBar .active").siblings().hide();e(".active > .expandable").slideDown()}}});e(document).on("click",".blueBar .flipped",function(t){t.preventDefault();t.stopPropagation();e(this).removeClass("flipped");e(this).closest("li").find(".flipped").removeClass("flipped");var n=e(this).closest("li"),r;while(!e(n).hasClass("active")){r=e(".blueBar").find(".active").parent().closest("li");e(".active > ul").hide();e(".active").siblings().slideDown();e("li").removeClass("active");e(r).addClass("active")}r=e(".blueBar").find(".active").parent().closest("li");e(".active > ul").hide();e(".active").siblings().slideDown();e("li").removeClass("active");e(r).addClass("active")});e(document).on("click",".blueBar li",function(t){var n=t.target;e(n).hasClass("expandicon")||e("#main-nav-check").attr("checked",!1)})}e("html").hasClass("onMobile")&&e(document).on("click",".blueBar li",function(t){t.stopPropagation();if(!e(this).hasClass("active")&&e(this).children().size()>1){t.preventDefault();var n=e(this).clone();e(n).find(".refineW").removeClass("refineW");e(n).find("ul").remove();e(n).addClass("linkTO");e(this).children("ul").prepend(n);e(this).siblings().removeClass("active").children(".expandable").hide();e(this).siblings().children(".expandable").hide();e(this).addClass("active");e(".active > .expandable").slideDown();if(!e(this).closest("ul").hasClass("blueBar")){e(this).closest("ul").addClass("lostFocus");e(".lostFocus").css({display:"block",overflow:""})}}else if(e(this).closest("ul").hasClass("lostFocus")){t.preventDefault();t.preventDefault();t.stopPropagation();e(this).closest("ul").removeClass("lostFocus");e(this).parent().find("ul").hide();e(this).parent().find(".lostFocus").removeClass("lostFocus").hide();e(this).parent().find(".active").removeClass("active");e(this).parent().find(".linkTO").remove()}})})})(jQuery);(function(e){e(document).ready(function(){contentWhenDocReady()})})(jQuery);