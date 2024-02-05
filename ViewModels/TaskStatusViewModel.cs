using CommunityToolkit.Mvvm.ComponentModel;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels
{
    public partial class TaskStatusViewModel : ViewModelBase
    {

        [ObservableProperty]
        ProjectTask selectedTask;

        [ObservableProperty]
        string taskStatus;

        public TaskStatusViewModel(INavigationService navigationService) : base(navigationService)
        {
        }

       
    }
}
