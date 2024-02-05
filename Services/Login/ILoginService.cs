
using Realms.Sync;

namespace eProjectsOnRealm.Services.Login;

public interface ILoginService
{
    Task LoginAsync(string email, string password);
    Task LogoutAsync();
    Task InitRealm();
    User CurrentUser { get; }

}