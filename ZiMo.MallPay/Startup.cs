using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ZiMo.MallPay.Startup))]
namespace ZiMo.MallPay
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
