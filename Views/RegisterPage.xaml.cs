using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class RegisterPage : ContentPage
{
	public RegisterPage(RegisterViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}