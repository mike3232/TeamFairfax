namespace NeoNatal.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class NeoNatalDB : DbContext
    {
        public NeoNatalDB()
            : base("name=NeoNatalDB1")
        {
        }

        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<HealthWorker> HealthWorkers { get; set; }
        public virtual DbSet<Survey> Surveys { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Client>()
                .Property(e => e.first_name)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.last_name)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.ethnicity)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.street_name)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.city)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.county)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<Client>()
                .HasMany(e => e.Surveys)
                .WithRequired(e => e.Client)
                .HasForeignKey(e => e.client_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HealthWorker>()
                .Property(e => e.username)
                .IsUnicode(false);

            modelBuilder.Entity<HealthWorker>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<HealthWorker>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<HealthWorker>()
                .HasMany(e => e.Clients)
                .WithRequired(e => e.HealthWorker)
                .HasForeignKey(e => e.HealthWorker_id)
                .WillCascadeOnDelete(false);
        }
    }
}
