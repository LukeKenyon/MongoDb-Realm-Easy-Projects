using CommunityToolkit.Maui.Core;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DevExpress.Data.Mask.Internal;
using DevExpress.Maui.Controls;
using DevExpress.Pdf.Native;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.ViewModels.Base;
using eProjectsOnRealm.Views.Templates;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace eProjectsOnRealm.ViewModels
{
    [QueryProperty(nameof(SelectedProject), nameof(SelectedProject))]
    public partial class ProjectTasksViewModel : ViewModelBase
    {
        private readonly IProjectService _projectService;
        private readonly IPopupService _popupService;

        [ObservableProperty]
        private BottomSheetState sheetState;

        [ObservableProperty]
        private Project selectedProject;

        [ObservableProperty]
        private ProjectTask selectedTask;

        [ObservableProperty]
        private bool isOpen = false;

        [ObservableProperty]
        private string activitySummary;

        [ObservableProperty]
        private DateTime activityDate;

        [ObservableProperty]
        private int consumedHours;

        [ObservableProperty]
        private DateTime defaultDate;

        //End binding for popup

        public ProjectTasksViewModel(INavigationService navigationService, IProjectService projectService,
            IPopupService popupService) : base(navigationService)
        {
            _popupService = popupService;
            _projectService = projectService;

           
        }

        [RelayCommand]
        public void OnAppearing()
        {
            DefaultDate = SelectedProject.StartDate.UtcDateTime;
          
        }

        [RelayCommand]
        public void OnDisappearing()
        {
            SheetState = BottomSheetState.Hidden;
        }

            [RelayCommand]
        private async Task ShowSheet()
        {
            await Task.Run(() =>
            {
                SheetState = BottomSheetState.HalfExpanded;

            });
         
        }

        [RelayCommand]
        private void ItemSelected()
        {
            SheetState = BottomSheetState.HalfExpanded;
        }

        [RelayCommand]
        private void CollectionScrolled()
        {
            SheetState = BottomSheetState.Hidden;
        }

        [RelayCommand]
        private async Task ChangeTaskStatus()
        {


           var result = await _popupService.ShowPopupAsync<TaskStatusViewModel>(onPresenting: viewModel => viewModel.SelectedTask = SelectedTask,CancellationToken.None);

            if (result != null)
            {
                if(SelectedTask.TaskStatus != result.ToString())
                {
                   await _projectService.ChangeProjectTaskStatus(SelectedProject.Id,SelectedTask.Id,result.ToString());
                }
            }
          
        }

        [RelayCommand]
        private async Task AddTaskActivity()
        {

            var taskActivity = new ProjectTaskActivity
            {
                ActivitySummary = ActivitySummary,
                ActivityDate = ActivityDate,
                ConsumedHours = ConsumedHours,
            };

            await _projectService.AddTaskActivity(SelectedProject.Id,SelectedTask.Id,taskActivity);

           await CancelActivity();
        }

        [RelayCommand]
        private async Task CancelActivity()
        {
            await Task.Run(() =>
            {
                SetPopupStatus();
                SheetState = BottomSheetState.HalfExpanded;
            });
        }

        [RelayCommand]
        private async Task ShowActivityPopup()
        {
            await Task.Run(() =>
            {
                SetPopupStatus();
            });
        }
        private void SetPopupStatus()
        {
            IsOpen = !IsOpen;
        }
    }
}
