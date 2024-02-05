using MongoDB.Bson;
using Realms;


namespace eProjectsOnRealm.Models;
public partial class ProjectTask : IEmbeddedObject
{

    [MapTo("_id")]
    public ObjectId Id { get; set; } = ObjectId.GenerateNewId();

    [MapTo("taskTitle")]
    public string TaskTitle { get; set; }

    [MapTo("taskSummary")]
    public string? TaskSummary { get; set; }

    [MapTo("allocatedTime")]
    public int AllocatedTime { get; set; }

    [MapTo("consumedTime")]
    public int ConsumedTime { get; set; }

    [MapTo("dueDate")]
    public DateTimeOffset DueDate { get; set; }

    [MapTo("taskStatus")]
    public string TaskStatus { get; set; }

    [MapTo("taskActivities")]
    public IList<ProjectTaskActivity> TaskActivities {get;}
}


