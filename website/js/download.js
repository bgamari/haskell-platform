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
    } else {
        $('.downloads-platform').addClass('visible');
    }
});

// Expanders
$(document).ready(function() {
    $('a.expander').click(function() {
        var $this = $(this);
        $this.parents('.downloads-platform').addClass('visible');
    });
});
