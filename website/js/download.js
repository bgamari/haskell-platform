$(document).ready(function() {
    $('.expandable').each(function() {
        var $this = $(this);
        $this.children().wrapAll('<div class="contents"></div>')
        var $contents = $this.children();
        $contents.hide();

        var $link = $('<a href="#">Click to expand</a>');
        $this.prepend($link);

        $link.click(function() {
            $contents.slideToggle();
        });
    });
});

function identifyPlatform() {
    var ua = navigator.userAgent;
    var userAgents = {
        'Mac OSX': 'osx',
        'Mac OS X': 'osx',
        'Linux': 'linux',
        'Windows': 'windows'
    };

    if (ua.indexOf('Android') != -1)
        return 'unknown';

    for (key in userAgents) {
        if (ua.indexOf(key) != -1) {
            return userAgents[key];
        }
    }
    return 'unknown';
}

var platformNames = {
    'osx': 'Mac OS X',
    'linux': 'Linux',
    'windows': 'Microsoft Windows',
};

// Infer user's operating system
$(document).ready(function() {
    var platform = identifyPlatform();
    if (platform != 'unknown'){
        var $platform = $(".downloads-platform[data-os='"+platform+"']");
        $platform
            .prependTo('#platforms')
            .addClass('preferred-platform')
            .addClass('visible');

        $(".found-user-platform strong").text(platformNames[platform]);
        $("body").addClass('user-platform-known');
    }
});

// Expanders
$(document).ready(function() {
    $('a.expander').click(function() {
        var $this = $(this);
        $('.downloads-platform').removeClass('visible');
        $this.parents('.downloads-platform').addClass('visible');
    });
});

// Copy hash
$(document).ready(function() {
    $('.hashes code').each(function() {
        var $this = $(this);
        var $btn = $('<button class="btn btn-default btn-xs"><i class="fa-scissors"></i></button>');
        $this.before($btn);
        $btn.click(function() {
            $btn.remove();
            var $area = $('<input type="text">').val($this.text());
            $this.after($area);
            $this.remove();
            $area.selectRange(0,-1);
        });
    });
});

// Linux flavors
$(document).ready(function() {
    $('#linux .flavors li a').click(function() {
        var $this = $(this);
        var distro = $(this).attr('href');
        $(this).parents('.sidebar').addClass('chosen');
        $(this).parents('ul').children('li').removeClass('active');
        $(this).parents('li').addClass('active');
        $('#linux .flavor').removeClass('active');
        $(distro).addClass('active');
    });
});

// Smooth scrolling to anchor links
// Complements of Bill Erickson: http://www.billerickson.net/code/smooth-scrolling-anchor-links/
$('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
        || location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
            $('html,body').animate({
                scrollTop: target.offset().top
            }, 1000);
            return false;
        }
    }
});
