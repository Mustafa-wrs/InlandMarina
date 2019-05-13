using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace InlandMarina
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            //Change to Permenant before going to production
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings);
        }
    }
}
