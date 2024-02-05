using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class AddProjectTaskPage : ContentPage
{
	public AddProjectTaskPage(AddProjectTaskViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}