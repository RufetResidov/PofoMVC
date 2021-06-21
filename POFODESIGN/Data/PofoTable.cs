using Microsoft.EntityFrameworkCore;
using POFODESIGN.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace POFODESIGN.Data
{
    public class PofoTable:DbContext
    {
        public PofoTable(DbContextOptions options):base(options)
        {

        }
        public DbSet<SectionBlog> SectionBlogs { get; set; }
        public DbSet<Builder> Builders { get; set; }
        public DbSet<Count> Counts { get; set; }
        public DbSet<ExperienceCount> ExperienceCounts { get; set; }
        public DbSet<IconEnd> IconEnds { get; set; }
        public DbSet<NumberText> NumberTexts { get; set; }
        public DbSet<People> Peoples { get; set; }
        public DbSet<PeopleSay> PeopleSays { get; set; }
        public DbSet<Portfolio> Portfolios { get; set; }
        public DbSet<Section2> Section2s { get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<TabMenu> TabMenus { get; set; }
    }
}
