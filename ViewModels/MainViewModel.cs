using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.ViewModels.Base;

namespace eProjectsOnRealm.ViewModels;

public partial class MainViewModel : ViewModelBase
{
    private readonly IProjectService _projectService;

    [ObservableProperty]
    private IQueryable<Project> projectItems;

    [ObservableProperty]
    private Project selectedProject;
    public MainViewModel(INavigationService navigationService,
        IProjectService projectService) : base(navigationService)
    {
        _projectService = projectService;

        ProjectItems = _projectService.Projects;
    }

    [RelayCommand]
    private async Task AddNewProject()
    {
        await NavigationService.NavigateToAsync("AddProject");
    }

    [RelayCommand]
    private async Task ViewDetails(Project project)
    {
        if (SelectedProject is null || IsBusy) return;

        var Id = project.Id;

        await NavigationService.NavigateToAsync("ProjectDetails",
            new Dictionary<string, object> { { "SelectedProject", SelectedProject } });
    }

    [RelayCommand]
    private async Task RefreshAsync()
    {
        if (IsBusy)
        {
            return;
        }
        await IsBusyFor(
            async () =>
            {
                ProjectItems = _projectService.Projects;
            });
    }

}
