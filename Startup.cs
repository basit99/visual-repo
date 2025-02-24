using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(tutorials.Startup))]
namespace tutorials
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
