﻿namespace ForumSystem.Web
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using System.Web.Routing;

    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Get questions by tag",
                url: "questions/tagged/{tag}",
                defaults: new { controller = "Questions", action = "GetByTag" });

            routes.MapRoute(
                name: "Display question",
                url: "questions/{id}/{url}",
                defaults: new { controller = "Questions", action = "Display" });

            routes.MapRoute(
                name: "List feedbacks",
                url: "Feedbacks/{page}",
                defaults: new { controller = "PageableFeedbackList", action = "Index", page = UrlParameter.Optional });

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional });
        }
    }
}
