using System;
using System.Web;
using System.Web.Mvc;
using System.Reflection;
using System.Web.Routing;
using System.Web.Optimization;

using Autofac;
using log4net.Config;
using Autofac.Integration.Mvc;
using Autofac.Integration.WebApi;
using Autofac.Extras.DynamicProxy;
using App.Controllers;
using App.App_Start;
using System.Web.Http;

namespace ZiMo.MallPay.App_Start
{

    public class RegisterType
    {
        public static IContainer IocContainer;
        public static void Run() {
            ContainerBuilder builder = new ContainerBuilder();
            Assembly dal = Assembly.Load("DAL");
            builder.RegisterAssemblyTypes(dal).Where(t => t.Name.EndsWith("DAL")).SingleInstance().PropertiesAutowired();

            Assembly bll = Assembly.Load("BLL");
            builder.RegisterAssemblyTypes(bll).Where(t => t.Name.EndsWith("BLL") || t.Name.EndsWith("Interface") || t.Name.EndsWith("Redis")).SingleInstance().PropertiesAutowired();

            Type baseType = typeof(BaseController);
            Assembly app = Assembly.Load("App");
            builder.RegisterAssemblyTypes(app).Where(t => t.Name.EndsWith("Interceptor"));
            builder.RegisterAssemblyTypes(app).Where(t => t.BaseType == baseType).PropertiesAutowired().EnableClassInterceptors().InterceptedBy(typeof(ExceptionInterceptor));

            builder.Register(c => new ExceptionInterceptor());
            IocContainer = builder.Build();

            // Set the dependency resolver for Web API
            AutofacWebApiDependencyResolver apiResolver = new AutofacWebApiDependencyResolver(IocContainer);
            GlobalConfiguration.Configuration.DependencyResolver = apiResolver;

            // Set the dependency resolver for MVC
            AutofacDependencyResolver mvcResolver = new AutofacDependencyResolver(IocContainer);
            DependencyResolver.SetResolver(mvcResolver);
        }
    }
}