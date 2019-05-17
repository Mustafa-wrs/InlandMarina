$(function () {
    $('.navbar-nav li a[href^="' + location.pathname.substr(1) + '.aspx"]').addClass("active");
});