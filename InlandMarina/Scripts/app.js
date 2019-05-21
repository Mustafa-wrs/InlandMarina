$(function () {
    if (this.location.pathname == "/") {
        $('.navbar-nav li a[href^="default.aspx"]').addClass("active");
    } else {
        $('.navbar-nav li a[href^="' + location.pathname.substr(1) + '.aspx"]').addClass("active");
    }
   
});