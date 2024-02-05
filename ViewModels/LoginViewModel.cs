using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Login;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Settings;
using eProjectsOnRealm.Services.Users;
using eProjectsOnRealm.Validations;
using eProjectsOnRealm.ViewModels.Base;
using System.Diagnostics;
using System.Text.RegularExpressions;

namespace eProjectsOnRealm.ViewModels;

public partial class LoginViewModel : ViewModelBase
{
    [GeneratedRegex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{5,}$")]
    private static partial Regex PasswordRegex();


    [GeneratedRegex(@" ^ ([w.-] +)@([w -] +)((.(w){2, 3})+)$")]
    private static partial Regex EmailRegex();


    [ObservableProperty]
    private string _userName;

    [ObservableProperty]
    private string _password;

    [ObservableProperty]
    private bool _isValid;

    private readonly ILoginService _loginService;
    private readonly ISettingsService _settingsService;
    private readonly IDialogService _dialogService;

    [ObservableProperty]
    bool emailHasError;

    [ObservableProperty]
    bool passwordHasError;



    public LoginViewModel(INavigationService navigationService,
        ILoginService loginService,
        ISettingsService settingsService) : base(navigationService)
    {
        _loginService = loginService;
        _settingsService = settingsService;
    }

    public override Task InitializeAsync()
    {
        return Task.CompletedTask;
    }

    [RelayCommand]
    public async Task OnAppearing()
    {
       await _loginService.InitRealm();
        if(_loginService.CurrentUser != null)
        {
            await NavigationService.NavigateToAsync("//Main/MainPage");
        }
    }

    [RelayCommand]
    private async Task SignIn()
    {
        Validate();
        if (IsValid)
        {
             await IsBusyFor(
                        async () =>
                        {
                            try
                            {
                                await _loginService.LoginAsync(UserName, Password);
                            }
                            catch (Exception ex)
                            {
                                Debug.WriteLine($"[SignIn] Error signing in: {ex}");
                            }
                            if (_loginService.CurrentUser != null)
                            {
                                UserName = string.Empty;
                                Password = string.Empty;
                                await NavigationService.NavigateToAsync("//Main/MainPage");
                            }

                        });
        }
       
    }

    [RelayCommand]
    public void Validate()
    {
        ClearErrors();

        EmailHasError = string.IsNullOrEmpty(UserName);
        PasswordHasError = string.IsNullOrEmpty(Password);  
        IsValid = !(EmailHasError && PasswordHasError);
    }

    [RelayCommand]
    private async Task Register()
    {
        await NavigationService.NavigateToAsync("Register");
    }

    [RelayCommand]
    public void ClearErrors()
    {
        EmailHasError = false;
        PasswordHasError = false;
    }
}
