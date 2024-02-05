
using eProjectsOnRealm.Models;

namespace eProjectsOnRealm.Services.Users
{
    public interface IUserService
    {
      
        IQueryable<SystemUser> SystemUsers { get; }
    }
}