using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class AddProjectPage : ContentPage
{
	private readonly AddProjectViewModel _viewModel;
	public AddProjectPage(AddProjectViewModel viewModel)
	{
		InitializeComponent();
		_viewModel = viewModel;
		BindingContext = _viewModel;
	}
}