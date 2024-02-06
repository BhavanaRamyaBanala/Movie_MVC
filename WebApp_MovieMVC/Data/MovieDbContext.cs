using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebApp_MovieMVC.Models;

namespace WebApp_MovieMVC.Data
{
    public class MovieDbContext : DbContext
    {
        public MovieDbContext (DbContextOptions<MovieDbContext> options)
            : base(options)
        {
        }

        public DbSet<WebApp_MovieMVC.Models.Movie> Movie { get; set; } = default!;
    }
}
