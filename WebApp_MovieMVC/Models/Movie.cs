using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp_MovieMVC.Models
{
    [Table("Movie")]
    public class Movie
    {
        [Key]
        public int MId { get; set; }
        public string? MName { get; set; }

        public string? StarCast { get; set; }
        public string? Director {  get; set; }
    }
}
