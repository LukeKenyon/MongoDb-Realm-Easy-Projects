using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Messaging;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Users;
using eProjectsOnRealm.ViewModels.Base;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels;

public partial class UsersViewModel : ViewModelBase
{

    [ObservableProperty]
    private IQueryable<SystemUser> _systemUsers;

    [ObservableProperty]
    private SystemUser _selectedUser;

    private IRealmCollection<UserMessage> UserMessages { get; set; }

    private readonly IUserService _userService;

    private readonly IMessageService _messageService;

    private readonly IDialogService _dialogService;


    public UsersViewModel(INavigationService navigationService,
        IUserService userService, IMessageService messageService,
        IDialogService dialogService) : base(navigationService)
    {
        _userService = userService;
        SystemUsers = _userService.SystemUsers;
        _messageService = messageService;
        _dialogService = dialogService;
        
    }

    [RelayCommand]
    public void Appearing()
    {
       
        UserMessages = _messageService.UserMessageCollection;
        UserMessages.CollectionChanged += UserMessages_CollectionChanged;
    }

    [RelayCommand]
    private void Leaving()
    {
        UserMessages.CollectionChanged -= UserMessages_CollectionChanged;
        _messageService.Dispose();
    }

    private void UserMessages_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
    {
       if(e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Add)
        {
           UserMessage currentMessage = (UserMessage)e.NewItems[0];
            if(currentMessage != null)
            {
                if(currentMessage.Recipient == _messageService.CurrentUser.Profile.Email)
                {
                    _dialogService.ShowToast($"New Message From {currentMessage.Sender}");
                }
            }
        }
    }

    [RelayCommand]
    private async Task ViewUserDetails()
    {
        await NavigationService.NavigateToAsync("UserDetails", new Dictionary<string, object> { { "SelectedUser", SelectedUser } });

    }
}
