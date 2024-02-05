using Realms.Sync;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using eProjectsOnRealm.Models;

namespace eProjectsOnRealm.Services.MongoDbRealm;

public static class RealmCoreService
{
    private static readonly string _appId = "your-realm appid here";

    private static bool _serviceInitialised;

    private static Realms.Sync.App _realmApp;

    private static Realm _mainThreadRealm;

    public static User CurrentUser => _realmApp.CurrentUser;

    /// <summary>
    /// Create the Initial Realm Core Application
    /// </summary>
    public static void InitializeService()
    {  
        if(_serviceInitialised) return;

        var appConfiguration = new AppConfiguration(_appId);

        _realmApp = Realms.Sync.App.Create(appConfiguration);

        _serviceInitialised = true;
    }

    /// <summary>
    /// Gets the Realm Main config if it exists or creates one
    /// If the user has logged in then this should be created
    /// </summary>
    /// <returns></returns>
    /// <exception cref="InvalidOperationException"></exception>
    public static Realm GetMainRealmThread()
    {
        if(!MainThread.IsMainThread)
        {
            throw new InvalidOperationException("This method should be called only from the main thread!");
        }
        if(_mainThreadRealm == null)
        {
            var mainThreadConfig = SetInitialSync();
            _mainThreadRealm = Realm.GetInstance(mainThreadConfig);
        }
        return _mainThreadRealm;

    }

    /// <summary>
    /// Get the Realm App Instance 
    /// </summary>
    /// <returns></returns>
    public static Realms.Sync.App GetRealmApp()
    {
        if(! _serviceInitialised)
        {
            InitializeService();
        }
       
        return _realmApp;
    }

    /// <summary>
    /// Internal Method to create the initial Flexible Sync 
    /// Configuration
    /// </summary>
    /// <returns></returns>
    /// <exception cref="InvalidOperationException"></exception>
    private static FlexibleSyncConfiguration SetInitialSync()
    {
        if(CurrentUser == null)
        {
            //throw new InvalidOperationException("Cannot get Realm config before login!");
        }

        var realmConfig = new FlexibleSyncConfiguration(CurrentUser)
        {
            PopulateInitialSubscriptions = (realm) =>
            {
               
                var projectsQuery = realm.All<Project>().Where(x => x.UserId == CurrentUser.Id);
                realm.Subscriptions.Add(projectsQuery, new SubscriptionOptions { Name = "myProjects" });

                var systemUsers = realm.All<SystemUser>();
               // var systemUsers = realm.All<SystemUser>().Where(u => u.Id != CurrentUser.Id);
                realm.Subscriptions.Add(systemUsers, new SubscriptionOptions { Name = "allUsers" });

                var myMessages = realm.All<UserMessage>().Where(m => m.Recipient == CurrentUser.Profile.Email || m.Sender == CurrentUser.Profile.Email);
                realm.Subscriptions.Add(myMessages, new SubscriptionOptions { Name = "myMessages" });
            },
        };

        return realmConfig;
    }

    /// <summary>
    /// Logs in a registered User and get the users initial sync
    /// configuration
    /// </summary>
    /// <param name="emailAddress"></param>
    /// <param name="userPassword"></param>
    /// <returns></returns>
    public static async Task LoginInAsync(string emailAddress, string userPassword)
    {

        await _realmApp.LogInAsync(Credentials.EmailPassword(emailAddress, userPassword));
        var ctx = new CancellationTokenSource(4000);
        try
        {
            using var realm = await Realm.GetInstanceAsync(SetInitialSync(),ctx.Token);
        }
        catch (TaskCanceledException ex)
        {
            //If connectivity issues we get here, need to handle this latter
        }
    }

    /// <summary>
    /// Logs out the current application user instance 
    /// </summary>
    /// <returns></returns>
    public static async Task LogoutAsync()
    {
        if (CurrentUser == null) { return; }
        await _realmApp.CurrentUser.LogOutAsync();

        if (_mainThreadRealm is not null)
        {
            _mainThreadRealm.Dispose();
            _mainThreadRealm = null;
        }
    }

    /// <summary>
    /// Create a New User
    /// </summary>
    /// <param name="emailAddress">New User Email Address</param>
    /// <param name="userPassword">New User Password</param>
    /// <returns></returns>
    public static async Task RegisterAsync(string emailAddress, string userPassword)
    {
        if (_realmApp is not null)
        {
            await _realmApp.EmailPasswordAuth.RegisterUserAsync(emailAddress, userPassword);
        }
    }
}
