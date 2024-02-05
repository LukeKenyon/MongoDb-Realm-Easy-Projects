using MongoDB.Bson;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Models
{
    public partial class SystemUser : IRealmObject
    {
        [PrimaryKey]
        [MapTo("_id")]
        public string Id { get; set; }

        [MapTo("userName")]
        public string UserName { get; set; }

        [MapTo("lastSeenAt")]
        public DateTimeOffset LastSeenAt { get; set; }

        [MapTo("presence")]
        public string Presence { get; set; }
    }
}
