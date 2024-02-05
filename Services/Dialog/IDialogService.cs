using CommunityToolkit.Maui.Views;

namespace eProjectsOnRealm.Services;

public interface IDialogService
{
    Task ShowAlertAsync(string message, string title, string buttonLabel);

    Task ShowToast(string text);

}