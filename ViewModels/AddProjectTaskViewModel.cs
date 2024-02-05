using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TaskStatus = eProjectsOnRealm.Models.TaskStatus;

namespace eProjectsOnRealm.ViewModels;

[QueryProperty(nameof(SelectedProject), nameof(SelectedProject))]
public partial class AddProjectTaskViewModel : ViewModelBase
{
    [ObservableProperty]
    Project selectedProject;

    [ObservableProperty]
    string taskTitle;

    [ObservableProperty]
    string taskSummary;

    [ObservableProperty]
    int allocatedTime = 0;

    [ObservableProperty]
    DateTime dueDate;

    [ObservableProperty]
    DateTime startDate;


    [ObservableProperty]
    DateTime calendarDate;

    private readonly IProjectService _projectService;
    private readonly IDialogService _dialogService;
    public AddProjectTaskViewModel(INavigationService navigationService,
        IProjectService projectService, IDialogService dialogService) : base(navigationService)
    {
        _projectService = projectService;
        _dialogService = dialogService;
    }

    [RelayCommand]
    private void OnAppearing()
    {
       
        StartDate = SelectedProject.StartDate.UtcDateTime; 
        CalendarDate = StartDate;
    }

    [RelayCommand]
    private async Task AddTask()
    {
        ProjectTask projectTask = new ProjectTask
        {
            TaskTitle = TaskTitle,
            TaskSummary = TaskSummary,
            ConsumedTime = 0,
            AllocatedTime = AllocatedTime,
            DueDate = DueDate,
            TaskStatus = TaskStatus.Planned.ToString(),
        };

        await _projectService.AddProjectTask(projectTask,SelectedProject.Id);

        ClearInputs();

        await _dialogService.ShowToast("Project Task Added");
    }
    private void ClearInputs()
    {
        TaskTitle = string.Empty;
        TaskSummary = string.Empty;
        AllocatedTime = 0;
        DueDate= StartDate;
    }
}
