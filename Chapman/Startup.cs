using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Chapman.Startup))]
namespace Chapman
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
