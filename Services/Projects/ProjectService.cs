using eProjectsOnRealm.Models;
using eProjectsOnRealm.Services.MongoDbRealm;
using MongoDB.Bson;
using Realms;
using Realms.Sync;
namespace eProjectsOnRealm.Services.Projects;

public class ProjectService : IProjectService
{
    private Realm _mainRealm;
 
    public ProjectService()
    {
        RealmCoreService.InitializeService();
        //Need to add check to make sure CurrentUser Exists
       _mainRealm = RealmCoreService.GetMainRealmThread();

    }


    public async Task AddProject(Project project)
    {   
        await _mainRealm.WriteAsync(() =>
        {
            _mainRealm.Add<Project>(project);
        });
    }

    public IQueryable<Project> GetProjects()
    {
       return _mainRealm.All<Project>();
    }

    public IQueryable<Project> Projects
    {
        get { return _mainRealm.All<Project>();}
    }

    public Project GetProject(ObjectId projectId)
    {
        return  Projects.SingleOrDefault(x => x.Id == projectId);
    }

    public async Task AddProjectTask(ProjectTask projectTask, ObjectId projectId)
    {
        var project =_mainRealm.All<Project>().Where(x => x.Id == projectId).FirstOrDefault();
       await _mainRealm.WriteAsync(()=>
        {   
            project.AllocatedHours = project.AllocatedHours + projectTask.AllocatedTime;
            project.Tasks.Add(projectTask);
        });
    }


    public async Task ChangeProjectTaskStatus(
        ObjectId projectId, ObjectId taskId, string taskStatus)
    {
        var project = _mainRealm.All<Project>().Where(x => x.Id == projectId).FirstOrDefault();
        await _mainRealm.WriteAsync(() =>
        {
            var projectTask = project.Tasks.Where(x => x.Id == taskId).FirstOrDefault();
            projectTask.TaskStatus = taskStatus;

        });
    }

    public async Task AddTaskActivity (ObjectId projectId, ObjectId taskId, ProjectTaskActivity taskActivity)
    {
        var project = _mainRealm.All<Project>().Where(x => x.Id == projectId).FirstOrDefault();
       await _mainRealm.WriteAsync(() =>
        {

            project.ConsumedHours = project.ConsumedHours + taskActivity.ConsumedHours;
            var projectTask = project.Tasks.Where(x => x.Id == taskId).FirstOrDefault();
            projectTask.ConsumedTime = projectTask.ConsumedTime + taskActivity.ConsumedHours;
            projectTask.TaskActivities.Add(taskActivity);

        });
    }
    public User CurrentUser => RealmCoreService.CurrentUser;
}
