using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.MongoDbRealm;
using Realms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Views.Templates
{
    internal class MessageDataTemplateSelector :DataTemplateSelector
    {
      
        public DataTemplate SenderTemplate { get; set; }
        public DataTemplate ReceiverTemplate { get; set; }



        protected override DataTemplate OnSelectTemplate(object item, BindableObject container)
        {

            var currentUser = RealmCoreService.CurrentUser.Profile.Email;
            
            var message = (UserMessage)item;

            if(message.Sender == currentUser )
            {
                return ReceiverTemplate;
            }

            return SenderTemplate;

        }
    }
}
