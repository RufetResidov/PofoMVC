using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using POFODESIGN.Data;
using POFODESIGN.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace POFODESIGN.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly PofoTable _context;
        public HomeController(ILogger<HomeController> logger, PofoTable context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            ViewData["blog"] = _context.SectionBlogs.ToList();
            ViewData["build"] = _context.Builders.ToList();
            ViewData["count"] = _context.Counts.ToList();
            ViewData["exCount"] = _context.ExperienceCounts.ToList();
            ViewData["iconEnd"] = _context.IconEnds.ToList();
            ViewData["numText"] = _context.NumberTexts.ToList();
            ViewData["people"] = _context.Peoples.ToList();
            ViewData["peopleSay"] = _context.PeopleSays.ToList();
            ViewData["portfolio"] = _context.Portfolios.ToList();
            ViewData["sec2"] = _context.Section2s.ToList();
            ViewData["service"] = _context.Services.ToList();
            ViewData["tabMenu"] = _context.TabMenus.ToList();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
