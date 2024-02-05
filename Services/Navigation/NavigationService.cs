

using eProjectsOnRealm.Services.Settings;

namespace eProjectsOnRealm.Services.Navigation;

public class NavigationService : INavigationService
{
    private readonly ISettingsService _settingsService;

    public NavigationService(ISettingsService settingsService)
    {
        _settingsService = settingsService;
        _settingsService.AuthAccessToken = string.Empty;
        _settingsService.AuthIdToken = string.Empty;
    }

    public Task InitializeAsync() =>
       
        NavigateToAsync(
            string.IsNullOrEmpty(_settingsService.AuthAccessToken)
                ? "//Login"
                : "//Main/MainPage");

    public Task NavigateToAsync(string route, IDictionary<string, object> routeParameters = null)
    {
        var shellNavigation = new ShellNavigationState(route);

        return routeParameters != null
            ? Shell.Current.GoToAsync(shellNavigation, routeParameters)
            : Shell.Current.GoToAsync(shellNavigation);
    }

    public Task PopAsync() =>
        Shell.Current.GoToAsync("..");
}