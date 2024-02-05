using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
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

[QueryProperty(nameof(SelectedProject),nameof(SelectedProject))]
public partial class ProjectDetailsViewModel : ViewModelBase
{
    [ObservableProperty]
    Project selectedProject;


    private readonly IProjectService _projectService;
    public ProjectDetailsViewModel(INavigationService navigationService,
        IProjectService projectService) : base(navigationService)
    {
        _projectService = projectService;
    }

    public override Task InitializeAsync()
    {
        return Task.CompletedTask;
    }


    [RelayCommand]
    public async Task AddTask()
    {

        await NavigationService.NavigateToAsync("AddProjectTask",
           new Dictionary<string, object> { { "SelectedProject", SelectedProject } });

      ///  await NavigationService.NavigateToAsync("AddProjectTask");
    }

    [RelayCommand]
    private async Task ViewTasks()
    {
        await NavigationService.NavigateToAsync("ProjectTasks",
             new Dictionary<string, object> { { "SelectedProject", SelectedProject } });
    }
}
