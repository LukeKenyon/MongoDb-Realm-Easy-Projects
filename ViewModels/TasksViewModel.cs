using CommunityToolkit.Mvvm.ComponentModel;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels;

[QueryProperty(nameof(SelectedProject), nameof(SelectedProject))]
public partial class TasksViewModel : ViewModelBase
{

    [ObservableProperty]
    Project selectedProject;


    private readonly IProjectService _projectService;

    public TasksViewModel(INavigationService navigationService,
        IProjectService projectService) : base(navigationService)
    {
        _projectService = projectService;
    }
}
