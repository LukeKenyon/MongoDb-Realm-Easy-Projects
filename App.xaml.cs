using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Settings;
using eProjectsOnRealm.Views;

namespace eProjectsOnRealm
{
    public partial class App : Application
    {
        public App(INavigationService navigationService)
        {
            InitializeComponent();
            MainPage = new AppShell(navigationService);
        }
    }
}