using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NeoNatal.Startup))]
namespace NeoNatal
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
