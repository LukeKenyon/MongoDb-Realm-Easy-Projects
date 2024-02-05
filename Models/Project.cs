using MongoDB.Bson;
using Realms;

namespace eProjectsOnRealm.Models;
    public partial class Project : IRealmObject
    {
        [PrimaryKey]
        [MapTo("_id")]
        public ObjectId Id { get; set; } = ObjectId.GenerateNewId();

        [MapTo("consumedHours")]
        public long ConsumedHours { get;set; }

        [MapTo("dailyHours")]
        public long DailyHours { get; set; }

        [MapTo("endDate")]
        public DateTimeOffset EndDate { get; set; }

        [MapTo("projectTitle")]
        public string ProjectTitle { get; set; }

        [MapTo("startDate")]
        public DateTimeOffset StartDate { get; set; }

        [MapTo("summary")]
        public string? Summary { get; set; }

        [MapTo("totalHours")]
        public long TotalHours { get; set; }

        [MapTo("allocatedHours")]
        public long AllocatedHours { get; set; }

        [MapTo("userId")]
        public string UserId {  get; set; }

        [MapTo("projectTasks")]
        public IList<ProjectTask> Tasks { get; }

    }

