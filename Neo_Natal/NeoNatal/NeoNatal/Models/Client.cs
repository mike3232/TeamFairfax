namespace NeoNatal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Client")]
    public partial class Client
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Client()
        {
            Surveys = new HashSet<Survey>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string first_name { get; set; }

        [Required]
        [StringLength(50)]
        public string last_name { get; set; }

        [Column(TypeName = "date")]
        public DateTime DOB { get; set; }

        [Required]
        [StringLength(50)]
        public string ethnicity { get; set; }

        public int street_number { get; set; }

        [Required]
        [StringLength(50)]
        public string street_name { get; set; }

        [Required]
        [StringLength(50)]
        public string city { get; set; }

        public int zip_code { get; set; }

        [Required]
        [StringLength(50)]
        public string county { get; set; }

        public int ward { get; set; }

        public long? phone { get; set; }

        public int HealthWorker_id { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        public virtual HealthWorker HealthWorker { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Survey> Surveys { get; set; }
    }
}
