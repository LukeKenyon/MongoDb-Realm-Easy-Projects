namespace eProjectsOnRealm.Services.Settings;

public interface ISettingsService
{
    string AuthAccessToken { get; set; }
    string AuthIdToken { get; set; }
   
}