using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Maui.Views;

namespace eProjectsOnRealm.Services;

public class DialogService : IDialogService
{
    public Task ShowAlertAsync(string message, string title, string buttonLabel)
    {
        return Application.Current.MainPage.DisplayAlert(title, message, buttonLabel);
    }

    public Task ShowToast(string text)
    {
        var toast = Toast.Make(text, ToastDuration.Short);
        return toast.Show();
    }


}