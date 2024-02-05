namespace eProjectsOnRealm.Services.Settings;

public class SettingsService : ISettingsService
{
    #region Setting Constants

    private const string AccessToken = "access_token";
    private const string IdToken = "id_token";
   
    private readonly string AccessTokenDefault = string.Empty;
    private readonly string IdTokenDefault = string.Empty;
  
    #endregion

    #region Settings Properties

    public string AuthAccessToken
    {
        get => Preferences.Get(AccessToken, AccessTokenDefault);
        set => Preferences.Set(AccessToken, value);
    }

    public string AuthIdToken
    {
        get => Preferences.Get(IdToken, IdTokenDefault);
        set => Preferences.Set(IdToken, value);
    }

    

    #endregion
}