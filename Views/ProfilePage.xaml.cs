using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class ProfilePage : ContentPage
{

	public ProfilePage(ProfileViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}