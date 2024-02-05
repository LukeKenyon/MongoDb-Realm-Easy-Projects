using eProjectsOnRealm.Models;
using MongoDB.Bson;
using Realms;
using Realms.Sync;

namespace eProjectsOnRealm.Services.Messaging
{
    public interface IMessageService
    {
        User CurrentUser { get; }
        IQueryable<UserMessage> Messages { get; }
        IRealmCollection<UserMessage> UserMessageCollection { get; }

        IRealmCollection<UserMessage> FilteredMessages(string emailAddress);
        Task AddMessage(UserMessage message);
        Task SetMessageRead(ObjectId messageId);
        void Dispose();
    }
}