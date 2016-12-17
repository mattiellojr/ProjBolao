using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjBolao.Startup))]
namespace ProjBolao
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
