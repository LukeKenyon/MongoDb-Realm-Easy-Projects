using MongoDB.Bson;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Models;

public partial class UserMessage :IRealmObject
{
    [PrimaryKey]
    [MapTo("_id")]
    public ObjectId Id { get; set; } = ObjectId.GenerateNewId();

    [MapTo("sender")]
    public string Sender { get; set; }

    [MapTo("recipient")]
    public string Recipient { get; set; }

    [MapTo("messageContent")]
    public string MessageContent { get; set; }

    [MapTo("messageDate")]
    public DateTimeOffset MessageDate { get; set; }

    public DateTime AppliedDate { get { return MessageDate.UtcDateTime; } } 

    [MapTo("isRead")]
    public bool IsRead { get; set; }

}
