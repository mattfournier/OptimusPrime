
// This script manages content stuff

(function($){

    //for mobile, add back to top bar
    if ($(window).width() <= 620) {
        $('#backtotop').backtotop({
            'position': 26,
            'speed' : 0,
            'toTop':500

        });
    }

    //resize double charts on first load and then again whenever the window is resized
    resizeDoubleCharts();
    resizeDoubleCols();

    /// Force full site on mobile
    //    Assigns cookie and reloads page
    ///
    $('#fullSite').click(function() {
        setCookie("fullSite", "full", 365);
        window.location.reload();
    });

    $(document).on("click", "#mobileSite", function() {
        var d = new Date();
        setCookie("fullSite", "", d - 3600);
        window.location.reload();
    });

    // if viewing full site on a mobile device, show mobile link
    if (getCookie("fullSite") == "full") {
        if (isFrench())
            $('.deskTopUl').prepend('<li><a href="#" id="mobileSite">Site Mobile</a>&nbsp;|&nbsp;</li>');
        else
            $('.deskTopUl').prepend('<li><a href="#" id="mobileSite">Mobile Site</a>&nbsp;|&nbsp;</li>');
    }


    /// Left Navigation
    //      - populate sideNav from headings and anchors
    //      - triggered by assigning "autopop" class to <nav id="sideNav">
    //      - use UL.leftToc to style
    ///
    //console.log('blah');
    if($('#sideNav').hasClass('autopop')) {
        var index = 1;
        var output = '<ul class="leftToc">';
        $("#subpageContent :header").each(function(){
            var level = ($(this)[0].tagName).substring(1);
            if (!$(this).attr('href')) {    // Assuming our anchors don't have hrefs
                while ( level > index ) {
                    output = output.substr(0,output.length-5) + "<ul>";
                    index++;
                }
                while ( level < index ) {
                    output += "</ul></li>";
                    index--;
                }
                if ( level == index ) {
                    anchorTitle = $(this).children("a").html();
                    anchorHREF = $(this).children("a").attr('id');
                    output += "<li><a href=\"#" + anchorHREF + "\"> " + anchorTitle + "</a></li>";
                }
            }
        });
        $("#sideNav").prepend(output);
    }


//---------------------------------------- persistent header
// function UpdateTableHeaders() {
//    $("body").each(function() {

//        var el             = $(this),
//            offset         = getScrollOffsets(el),
//            scrollTop      = $(window).scrollTop(),
//            floatingHeader = $(".floatingHeader", this)

//        if ((scrollTop > offset.top) && (scrollTop < offset.top + el.height())) {
//            floatingHeader.css({
//             "visibility": "visible",
//             "position": "fixed",
//             "top":"0"
//            });
//            $("#topNav").css({
//             "visibility": "visible",
//             "position": "fixed",
//             "top":"0"
//            });
//        } else { 
//            floatingHeader.css({
//             "visibility": "hidden"
//            });
//        };
//    });
// }

})(jQuery);


function resizeDoubleCols() {
    //resize all double columns with sep. headings
    $('.doubleBox').each(function(){

        //equalize header heights
        var columnOne = $(this).children('.leftCol').children('header').css("height", "auto").height();
        var columnTwo = $(this).children('.rightCol').children('header').css("height", "auto").height();
        var maxNumber = Math.max(columnOne, columnTwo);
        $(this).children('.leftCol').children('header').css("height", maxNumber + "px");
        $(this).children('.rightCol').children('header').css("height", maxNumber + "px");
    });
}

function resizeDoubleCharts() {
    //resize all double column charts
    $('.twoColChart').each(function(){

        //equalize span heights
        var columnOne = $(this).children('.leftChart').children('span').css("height", "auto").height();
        var columnTwo = $(this).children('.rightChart').children('span').css("height", "auto").height();
        var maxNumber = Math.max(columnOne, columnTwo);
        $(this).children('.leftChart').children('span').css("height", maxNumber + "px");
        $(this).children('.rightChart').children('span').css("height", maxNumber + "px");

        //we're assuming the images are the same height

        //equalize figcaption heights
        columnOne = $(this).children('.leftChart').children('figcaption').css("height", "auto").height();
        columnTwo = $(this).children('.rightChart').children('figcaption').css("height", "auto").height();
        maxNumber = Math.max(columnOne, columnTwo);
        $(this).children('.leftChart').children('figcaption').css("height", maxNumber + "px");
        $(this).children('.rightChart').children('figcaption').css("height", maxNumber + "px");
    });
}

// Sticky left navigation
// Be careful with tall boxes that span past browser height
function persistentSideNav(){
 
 /*COMMENTED OUT - sideNav var throws bugs*/   
    // if ( $("#subpageContent").length > 0 ){

    //     var offTOP = getScrollOffsets(window);
        
    //         if (offTOP > 250 ){
    //             sideNav.style.position = "fixed";
    //             sideNav.style.top = "10px";
    //             sideNav.style.width = "190px";
    //         } else {
    //             subpageContent.style.top = "245px";
    //             sideNav.style.position ="absolute";
    //             sideNav.style.top = "250px";
    //             sideNav.style.width = "190px";
    //         }
    // }
}

function getScrollOffsets(w) {

    // Use the specified window or the current window if no argument 
    w = w || window;

    // This works for all browsers except IE versions 8 and before
    if (w.pageXOffset != null) { return w.pageYOffset; }

    // For IE (or any browser) in Standards mode
    var d = w.document;
    if (document.compatMode == "CSS1Compat") {
        return d.documentElement.scrollTop;
    }

    // For browsers in Quirks mode
    return d.body.scrollTop;
}

function contentWhenDocReady(){

//------------------ persistent headers
    $(function() {
       
       // if (notMobile != true){

       //     var clonedBlackBar;
       //          clonedBlackBar = $(".persist-header").clone();
       //          clonedBlackBar.addClass("floatingHeader");
       //          clonedBlackBar.find(".topSiteNav").remove();

       //      $("body").prepend(clonedBlackBar);

       //  }

       $(window)
        .scroll( function(){
            
            // UpdateTableHeaders();
            persistentSideNav();
        })
        .trigger("scroll");

    });
    
    
        /* This will allow Google Analytics to track downloads: .PDF; .DOC; .XLS; .PPT; .ZIP */ 
    // Documents
    $("a[href*='.pdf'], a[href*='.doc'], a[href*='.xls'], a[href*='.ppt']").click(function () {
        _gaq.push(['_trackPageview', '/doc/' + $(this).attr('href')]);
    });
    // File
    $("a[href*='.zip']").click(function () {
        _gaq.push(['_trackPageview', '/file/' + $(this).attr('href')]);
    });


//------------------- language toggle

    $(document).on('click', 'a.lang', function(e){
        e.preventDefault();
        //
        var pathname = window.location.pathname;
        var newpath = "";

        var eng = "eng.html";
        var fra = "fra.html";

        if (pathname.search(eng) > -1)
        {
            newpath = pathname.replace(eng, fra);
        }else {
            newpath = pathname.replace(fra, eng);
        }

        //document.location.href = newpath;
        window.location.href = newpath;

    });

    //removes the html element's onMobile tag if window is small enough to guarantee mobile nav display
    //mobile nav is now forced
    // if ($(window).width() < 977){
    //     $("html").removeClass("onMobile");
    // }

    $(window).on("debouncedresize", function() {
       $(".magic").css('display','block');
       $(".Arrow").addClass("rotate");
        //$(".magic").removelass("checker");

        resizeDoubleCharts();
        resizeDoubleCols();

    });

    // add multi-line external link icons for IE7
    if ( $('html').hasClass('ie7') ) {
        $("#mainContent a[href^='http://www']").each(function() {
            $(this).after("<span class='extLink'>&nbsp;</span>");
        });
    }

    $(".Arrow").click(function(e){
        e.preventDefault();
        var page = $(this).attr('href');

        if ($(this).hasClass("rotate")){
        $(this).removeClass("rotate");
        $("#"+page).css('display','none');

        }else{
           $(this).addClass("rotate");
            $("#"+page).css('display','block');

        }
    });
}

