using CommunityToolkit.Maui.Views;
using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views.Templates;

public partial class TaskStatusPopup : Popup
{
	private readonly TaskStatusViewModel _viewModel;
	public TaskStatusPopup(TaskStatusViewModel viewModel)
	{
		_viewModel = viewModel;

        InitializeComponent();
		BindingContext = viewModel;
	}

    private async void Button_Clicked(object sender, EventArgs e)
    {
		var result = _viewModel.TaskStatus;
        var cts = new CancellationTokenSource(TimeSpan.FromSeconds(5));

		await CloseAsync(result, cts.Token);
    }
}