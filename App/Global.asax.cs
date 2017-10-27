using App.App_Start;
using AutoMapper;
using log4net.Config;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using ZiMo.MallPay.App_Start;

namespace ZiMo.MallPay
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //Ioc dependency injection
            RegisterType.Run();

            //Entity mapping to object
            XmlConfigurator.Configure();
            Mapper.Initialize(config => config.AddProfile<AutoMapperConfig>());
        }
    }
}
