using eProjectsOnRealm.Services;
using eProjectsOnRealm.Services.Navigation;
using Microsoft.Win32;

namespace eProjectsOnRealm.Views;

public partial class AppShell : Shell
{

    private readonly INavigationService _navigationService;
    public AppShell(INavigationService navigationService)
    {
        _navigationService = navigationService;
        AppShell.InitializeRouting();

        InitializeComponent();
    }

    protected override async void OnHandlerChanged()
    {
        base.OnHandlerChanged();

        if (Handler is not null)
        {
           // await _navigationService.InitializeAsync();
        }
    }

    private static void InitializeRouting()
    {
        Routing.RegisterRoute("Register", typeof(RegisterPage));
        Routing.RegisterRoute("AddProject", typeof(AddProjectPage));
        Routing.RegisterRoute("ProjectDetails", typeof(ProjectDetailsPage));
        Routing.RegisterRoute("AddProjectTask", typeof(AddProjectTaskPage));
        Routing.RegisterRoute("ProjectTasks", typeof(ProjectTasksPage));
        Routing.RegisterRoute("UserDetails", typeof(SystemUserPage));  
    }

}
