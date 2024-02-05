using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.MongoDbRealm;
using MongoDB.Bson;
using Realms;
using Realms.Sync;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Services.Messaging;

public class MessageService : IMessageService, IDisposable
{
    private Realm _mainRealm;

    private bool _disposed = false;
    private readonly IDialogService _dialogService;

    public MessageService(IDialogService dialogService)
    {
        RealmCoreService.InitializeService();

        _mainRealm = RealmCoreService.GetMainRealmThread();

        _dialogService = dialogService; 
    }

    public IQueryable<UserMessage> Messages
    {
        get { return _mainRealm.All<UserMessage>(); }
    }


    public IRealmCollection<UserMessage> UserMessageCollection => Messages.AsRealmCollection<UserMessage>();


    public IRealmCollection<UserMessage> FilteredMessages(string emailAddress)
    {
        return Messages.Where(x => x.Recipient == emailAddress 
        || x.Sender == emailAddress).OrderBy(x => x.MessageDate).AsRealmCollection<UserMessage>();
    }

    public async Task AddMessage(UserMessage message)
    {
        await _mainRealm.WriteAsync(() =>
        {
            _mainRealm.Add<UserMessage>(message);
        });
    }

    public async Task SetMessageRead(ObjectId messageId)
    {
        var message = _mainRealm.All<UserMessage>().Where(m => m.Id == messageId).FirstOrDefault();
        if (message != null)
        {
            await _mainRealm.WriteAsync(() =>
            {
                message.IsRead = true;
            });

        }

    }

    public void Dispose()
    {
       Dispose(true);
        GC.SuppressFinalize(this);
    }

    protected virtual void Dispose(bool disposing)
    {
        if (!_disposed)
        {
            if (disposing)
            {
                // Dispose managed resources.
            }

            _disposed = true;
        }
    }

    public User CurrentUser => RealmCoreService.CurrentUser;
}
