using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views;

public partial class LoginPage : ContentPage
{
    private readonly LoginViewModel _viewModel;
	public LoginPage(LoginViewModel viewModel)
	{
		InitializeComponent();
        _viewModel = viewModel;
		BindingContext = _viewModel;
	}

    protected override void OnAppearing()
    {
        var content = Content;
        Content = null;
        Content = content;
    }
}