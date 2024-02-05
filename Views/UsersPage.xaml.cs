using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class UsersPage : ContentPage
{
	public UsersPage(UsersViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}