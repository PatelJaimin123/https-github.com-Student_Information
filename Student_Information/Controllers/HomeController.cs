using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Rotativa;
using Rotativa.Options;
using Student_Information.Models;

namespace Student_Information.Controllers
{
    public class HomeController : Controller
    {
        StudentEntities student = new StudentEntities();
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult Insert(Information information)
        {
            
            var data = student.Information.Add(information);
            student.SaveChanges();
            return Json("true",JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetList()
        {
            List<Information> information = new List<Information>();
            var Data = student.Information.ToList();
            return Json(new { data = Data }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult PrintPDF()
        {
            List<Information> Data = student.Information.ToList();
            ViewBag.save = Data;
            return new PartialViewAsPdf("View", Data)
            {
                PageOrientation = Orientation.Landscape,
                PageSize = Size.A3,
                CustomSwitches = "--footer-center \" [page] Page of [toPage] Pages\" --footer-line --footer-font-size \"9\" --footer-spacing 5 --footer-font-name \"calibri light\"",
                FileName = "TestPartialViewAsPdf.pdf"
            };

        }


    }
}