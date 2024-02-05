using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class SystemUserPage : ContentPage
{
	public SystemUserPage(SystemUserViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}