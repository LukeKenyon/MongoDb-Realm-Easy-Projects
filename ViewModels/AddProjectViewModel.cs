using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using eProjectsOnRealm.Functions;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.Services.Settings;
using eProjectsOnRealm.ViewModels.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.ViewModels;

public partial class AddProjectViewModel : ViewModelBase
{
    private readonly IProjectService _projectService;
    private readonly ISettingsService _settingsService;

    [ObservableProperty]
    private string _projectTitle;

    [ObservableProperty]
    private string _projectSummary;

    [ObservableProperty]
    private long _dailyHours;

    [ObservableProperty]
    private DateTime _startDate;

    [ObservableProperty]
    private DateTime _endDate;



    public AddProjectViewModel(INavigationService navigationService,
        IProjectService projectService, ISettingsService settingsService) : base(navigationService)
    {
        _settingsService = settingsService;
        _projectService = projectService;

        StartDate = DateTime.Now;
        EndDate = DateTime.Now.AddDays(20);
    }


    [RelayCommand]
    private async Task CreateProject()
    {
        try { 
            var totalProjectDays = Calculations.TotalBusinessDays(StartDate, EndDate);
            var totalProjectHours = Calculations.TotalProjectHours(totalProjectDays, (int)DailyHours);

            var project = new Project
            {
                ProjectTitle = ProjectTitle,
                Summary = ProjectSummary,
                TotalHours = totalProjectHours,
                DailyHours = DailyHours,
                StartDate = StartDate,
                EndDate = EndDate,
                ConsumedHours = 0,
                AllocatedHours = 0,
                UserId = _projectService.CurrentUser.Id
            };
            await _projectService.AddProject(project);

            ClearInputs();  
           // await NavigationService.NavigateToAsync("//Main/MainPage");
        }
        catch (Exception ex)
        {

        }

    }


    private void ClearInputs()
    {
        ProjectTitle = string.Empty;
        ProjectSummary = string.Empty;
        DailyHours  = 0;
        StartDate = DateTime.Now;
        EndDate= DateTime.Now.AddDays(20);
    }
}
