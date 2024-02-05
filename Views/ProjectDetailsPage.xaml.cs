using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class ProjectDetailsPage : ContentPage
{
	private readonly ProjectDetailsViewModel _viewModel;
	public ProjectDetailsPage(ProjectDetailsViewModel viewModel)
	{
		InitializeComponent();
		_viewModel = viewModel;
		BindingContext = _viewModel;
	}
}