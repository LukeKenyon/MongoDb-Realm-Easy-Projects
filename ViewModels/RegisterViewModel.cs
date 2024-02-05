using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Register;
using eProjectsOnRealm.Validations;
using eProjectsOnRealm.ViewModels.Base;

namespace eProjectsOnRealm.ViewModels;

public partial class RegisterViewModel : ViewModelBase
{
    [ObservableProperty]
    private ValidatableObject<string> _userName = new();

    [ObservableProperty]
    private ValidatableObject<string> _password = new();

    [ObservableProperty]
    [NotifyCanExecuteChangedFor(nameof(RegisterCommand))]
    private bool _isValid;

    private readonly IRegisterService _registerService;
    public RegisterViewModel(INavigationService navigationService,
        IRegisterService registerService) : base(navigationService)
    {
        _registerService = registerService;
    }

    [RelayCommand(CanExecute = nameof(IsValid))]
    public async Task RegisterAsync()
    {
        await _registerService.RegisterUser(UserName.Value, Password.Value);

        await NavigationService.NavigateToAsync("//Login");
    }

    [RelayCommand]
    public void Validate()
    {
        IsValid = UserName.Validate() && Password.Validate();
    }
}
