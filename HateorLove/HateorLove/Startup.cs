using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HateorLove.Startup))]
namespace HateorLove
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
