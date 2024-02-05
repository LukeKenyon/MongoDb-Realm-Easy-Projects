using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Navigation;

namespace eProjectsOnRealm.ViewModels.Base;

public interface IViewModelBase : IQueryAttributable
{
    public INavigationService NavigationService { get; }

    public IAsyncRelayCommand InitializeAsyncCommand { get; }

    public bool IsBusy { get; }

    public bool IsInitialized { get; }

    Task InitializeAsync();
}