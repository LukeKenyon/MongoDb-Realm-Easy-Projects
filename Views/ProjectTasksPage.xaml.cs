using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class ProjectTasksPage : ContentPage
{
	public ProjectTasksPage(ProjectTasksViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}