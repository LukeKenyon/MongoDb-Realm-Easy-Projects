using eProjectsOnRealm.Models;
using MongoDB.Bson;
using Realms.Sync;

namespace eProjectsOnRealm.Services.Projects;

public interface IProjectService
{
    IQueryable<Project> GetProjects();

    Task AddProject(Project project);

    Task AddProjectTask(ProjectTask projectTask, ObjectId projectId);

    Task ChangeProjectTaskStatus(
        ObjectId projectId, ObjectId taskId, string taskStatus);

    Task AddTaskActivity(ObjectId projectId, ObjectId taskId, ProjectTaskActivity taskActivity);

    IQueryable<Project> Projects { get; }

    Project GetProject(ObjectId projectId);

    User CurrentUser { get; }
}