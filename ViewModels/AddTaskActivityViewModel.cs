
using CommunityToolkit.Mvvm.ComponentModel;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels;



public partial class AddTaskActivityViewModel : ViewModelBase
{
    [ObservableProperty]
    private string taskSummary;

    [ObservableProperty]
    private DateTime activityDate;

    [ObservableProperty]
    private int consumedHours;

    [ObservableProperty]
    private DateTime calendarDate = DateTime.Now;

    private readonly IProjectService _projectService;
    public AddTaskActivityViewModel(INavigationService navigationService,
        IProjectService projectService) : base(navigationService)
    {
        _projectService = projectService;
    }
}
