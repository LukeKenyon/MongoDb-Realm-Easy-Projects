using CommunityToolkit.Maui.Views;
using eProjectsOnRealm.Models;
using eProjectsOnRealm.ViewModels;

namespace eProjectsOnRealm.Views.Templates;

public partial class AddTaskActivityPopup : Popup
{
	private readonly AddTaskActivityViewModel _viewModel;
	public AddTaskActivityPopup(AddTaskActivityViewModel viewModel)
	{
		_viewModel = viewModel;

        InitializeComponent();
		BindingContext = viewModel;
	}

    private async void Button_Clicked(object sender, EventArgs e)
    {
		var taskActivity = new ProjectTaskActivity
		{
			ActivitySummary = _viewModel.TaskSummary,
			ActivityDate = _viewModel.ActivityDate,
			ConsumedHours = _viewModel.ConsumedHours
		};
        var cts = new CancellationTokenSource(TimeSpan.FromSeconds(5));

		await CloseAsync(taskActivity, cts.Token);
    }
}