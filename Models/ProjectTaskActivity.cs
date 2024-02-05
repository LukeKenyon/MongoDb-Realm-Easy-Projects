using Realms;


namespace eProjectsOnRealm.Models
{
    public partial class ProjectTaskActivity :IEmbeddedObject
    {
        [MapTo("activitySummary")]
        public string ActivitySummary { get; set; }

        [MapTo("activityDate")]
        public DateTimeOffset ActivityDate { get; set; }

        [MapTo("consumedHours")]
        public int ConsumedHours { get; set; }


    }
}
