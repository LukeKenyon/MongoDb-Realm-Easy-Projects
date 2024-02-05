using CommunityToolkit.Maui;
using DevExpress.Maui;
using DevExpress.Maui.Core;
using eProjectsOnRealm.Services.Settings;
using eProjectsOnRealm.Services;
using eProjectsOnRealm.ViewModels;
using eProjectsOnRealm.Views;
using eProjectsOnRealm.Services.Navigation;
using eProjectsOnRealm.Services.Login;
using eProjectsOnRealm.Services.Register;
using eProjectsOnRealm.Services.Projects;
using eProjectsOnRealm.Services.Users;
using eProjectsOnRealm.Views.Templates;
using eProjectsOnRealm.Services.Messaging;

namespace eProjectsOnRealm
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            ThemeManager.ApplyThemeToSystemBars = true;
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .UseDevExpress(useLocalization: true)
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("univia-pro-regular.ttf", "Univia-Pro");
                    fonts.AddFont("roboto-bold.ttf", "Roboto-Bold");
                    fonts.AddFont("roboto-regular.ttf", "Roboto");
                    fonts.AddFont("Font_Awesome_5_Free-Regular-400.otf", "FontAwesome-Regular");
                    fonts.AddFont("Font_Awesome_5_Free-Solid-900.otf", "FontAwesome-Solid");
                })
                .RegisterAppServices()
                .RegisterViewModels()
                .RegisterPages()
                .RegisterPopups();

            return builder.Build();
        }

        public static MauiAppBuilder RegisterAppServices(this MauiAppBuilder mauiAppBuilder)
        {
            mauiAppBuilder.Services.AddSingleton<ISettingsService, SettingsService>();
            mauiAppBuilder.Services.AddSingleton<INavigationService, NavigationService>();
            mauiAppBuilder.Services.AddSingleton<IDialogService, DialogService>();
            mauiAppBuilder.Services.AddTransient<IUserService, UserService>();
            mauiAppBuilder.Services.AddSingleton<ILoginService, LoginService>();
            mauiAppBuilder.Services.AddSingleton<IRegisterService, RegisterService>();  
            mauiAppBuilder.Services.AddTransient<IProjectService, ProjectService>();
            mauiAppBuilder.Services.AddTransient<IMessageService, MessageService>();
            return mauiAppBuilder;
        }

        public static MauiAppBuilder RegisterViewModels(this MauiAppBuilder mauiAppBuilder)
        {
            mauiAppBuilder.Services.AddTransient<LoginViewModel>();
            mauiAppBuilder.Services.AddTransient<RegisterViewModel>();;
            mauiAppBuilder.Services.AddSingleton<MainViewModel>();
            mauiAppBuilder.Services.AddTransient<AddProjectTaskViewModel>();
            mauiAppBuilder.Services.AddTransient<AddProjectViewModel>();
            mauiAppBuilder.Services.AddTransient<ProfileViewModel>();
            mauiAppBuilder.Services.AddTransient<ProjectDetailsViewModel>();
            mauiAppBuilder.Services.AddTransient<ProjectTasksViewModel>();
            mauiAppBuilder.Services.AddTransient<UsersViewModel>();
            mauiAppBuilder.Services.AddTransient<SystemUserViewModel>();
            mauiAppBuilder.Services.AddTransient<TaskStatusViewModel>();


            return mauiAppBuilder;
        }

        public static MauiAppBuilder RegisterPages(this MauiAppBuilder mauiAppBuilder)
        {
            mauiAppBuilder.Services.AddTransient<LoginPage>();
            mauiAppBuilder.Services.AddTransient<RegisterPage>();
            mauiAppBuilder.Services.AddTransient<MainPage>();
            mauiAppBuilder.Services.AddTransient<AddProjectPage>();
            mauiAppBuilder.Services.AddTransient<AddProjectTaskPage>();
            mauiAppBuilder.Services.AddTransient<ProjectDetailsPage>();
            mauiAppBuilder.Services.AddTransient<ProjectTasksPage>();
            mauiAppBuilder.Services.AddTransient<ProfilePage>();
            mauiAppBuilder.Services.AddTransient<UsersPage>();
            mauiAppBuilder.Services.AddTransient<SystemUserPage>();

            return mauiAppBuilder;
        }

        public static MauiAppBuilder RegisterPopups(this MauiAppBuilder mauiAppBuilder)
        {

            mauiAppBuilder.Services.AddTransientPopup<TaskStatusPopup, TaskStatusViewModel>();
            mauiAppBuilder.Services.AddTransientPopup<AddTaskActivityPopup, AddTaskActivityViewModel>();

            return mauiAppBuilder;
        }
    }
}
