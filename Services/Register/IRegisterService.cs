
namespace eProjectsOnRealm.Services.Register;

public interface IRegisterService
{
    Task RegisterUser(string emailAddress, string userPassword);
}