using eProjectsOnRealm.Services.MongoDbRealm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Services.Register;

public class RegisterService : IRegisterService
{
    public RegisterService()
    {
        RealmCoreService.InitializeService();
    }

    public async Task RegisterUser(string emailAddress, string userPassword)
    {
        await RealmCoreService.RegisterAsync(emailAddress, userPassword);
    }
}
