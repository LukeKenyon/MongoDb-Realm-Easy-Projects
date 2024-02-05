using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.MongoDbRealm;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Services.Users;

public class UserService : IUserService
{
    private Realm _mainRealm;

    public UserService()
    {
        RealmCoreService.InitializeService();
        _mainRealm = RealmCoreService.GetMainRealmThread();
    }

    public IQueryable<SystemUser> SystemUsers { 
        get { return _mainRealm.All<SystemUser>().Where(x => x.Id != _mainRealm.SyncSession.User.Id); } }
}