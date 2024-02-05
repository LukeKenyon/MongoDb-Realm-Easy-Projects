using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Services.Login;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.Services.Users;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels;

public partial class ProfileViewModel : ViewModelBase
{
    private readonly ILoginService _loginService;
    public ProfileViewModel(INavigationService navigationService,
        ILoginService loginService) : base(navigationService)
    {
        _loginService = loginService;
    }

    public override Task InitializeAsync()
    {
        return Task.CompletedTask;
    }

    [RelayCommand]
    private async Task Logout()
    {
        
        await IsBusyFor(
       async () =>
       {
           await _loginService.LogoutAsync();
           await NavigationService.NavigateToAsync(
               "//Login");
       });

    }
}
