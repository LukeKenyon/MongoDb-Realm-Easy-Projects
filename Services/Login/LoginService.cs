using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.MongoDbRealm;
using eProjectsOnRealm.Services.Settings;
using Realms.Sync;

namespace eProjectsOnRealm.Services.Login;

public class LoginService : ILoginService
{
    private readonly ISettingsService _settingsService;
    private readonly IDialogService _dialogService;
    public LoginService(ISettingsService settingsService)
    { 
        _settingsService = settingsService;
       
        _settingsService.AuthAccessToken = string.Empty;
        _settingsService.AuthIdToken = string.Empty;

    }
    public async Task InitRealm()
    {
        RealmCoreService.InitializeService();
    }

    public async Task LoginAsync(string email, string password)
    {
        await RealmCoreService.LoginInAsync(email, password);

        if (RealmCoreService.CurrentUser is not null)
        {
            ChangeUserStatus("Online", CurrentUser.Id);
        }
    }

    public async Task LogoutAsync()
    {
        ChangeUserStatus("Offline", CurrentUser.Id);
        await RealmCoreService.LogoutAsync();
    }

    public User CurrentUser => RealmCoreService.CurrentUser;


    private void ChangeUserStatus(string status, string userId)
    {
        var mainRealm =  RealmCoreService.GetMainRealmThread();

        if (mainRealm != null)
        {
            var systemUser = mainRealm.All<SystemUser>().Where(x =>  x.Id == userId).FirstOrDefault();
            if (systemUser != null)
            {
                mainRealm.Write(() =>
                {
                    systemUser.Presence = status;
                    systemUser.LastSeenAt = DateTime.UtcNow;
                });
            }
        }
    }

}
