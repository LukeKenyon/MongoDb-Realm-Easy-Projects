using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Messaging;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.ViewModels.Base;
using Realms;

namespace eProjectsOnRealm.ViewModels;


[QueryProperty(nameof(SelectedUser), nameof(SelectedUser))]
public partial class SystemUserViewModel : ViewModelBase
{

    [ObservableProperty]
    private SystemUser selectedUser;

    //[ObservableProperty]
    //private IQueryable<UserMessage> userMessages;

    [ObservableProperty]
    private UserMessage selectedMessage;

    [ObservableProperty]
    private string messageContent;

    [ObservableProperty]
    private bool isOpen = false;

    [ObservableProperty]
    public IRealmCollection<UserMessage> userMessageCollection;

    private readonly IMessageService _messageService;

    public SystemUserViewModel(INavigationService navigationService,
        IMessageService messageService) : base(navigationService)
    {
        _messageService = messageService;
    }

    [RelayCommand]
    public void OnAppearing()
    {
        UserMessageCollection = _messageService.FilteredMessages(SelectedUser.UserName); 
    }

    [RelayCommand]
    private async Task SendMessage() 
    {
        var message = new UserMessage
        {
            IsRead = false,
            Recipient = SelectedUser.UserName,
            MessageContent = MessageContent,
            MessageDate = DateTime.Now,
            Sender = _messageService.CurrentUser.Profile.Email

        };

        await _messageService.AddMessage(message);

        MessageContent = string.Empty;

        //SetPopupStatus();
    }

    [RelayCommand]
    private async Task CancelMessage()
    {
        await Task.Run(() =>
        {
            SetPopupStatus();
           
        });
       
    }

    [RelayCommand]
    private async Task SetMessageRead()
    {
        //Only set message as read if logged in user is the recipient
        if(SelectedMessage != null && !SelectedMessage.IsRead 
            && SelectedMessage.Recipient == _messageService.CurrentUser.Profile.Email)
        {
            await _messageService.SetMessageRead(SelectedMessage.Id);
        }
    }

    [RelayCommand]
    private async Task ShowMsgPopup()
    {
        await Task.Run(() =>
        {
            SetPopupStatus();
        });
    }

    private void SetPopupStatus()
    { 
        MessageContent = string.Empty;
        IsOpen = !IsOpen;
    }


}
