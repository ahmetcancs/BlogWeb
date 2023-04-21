using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb.Education
{
    public partial class AdminEducationUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            TxtId.Enabled = false; //unchangeable area
            TxtId.Text = Id.ToString();


            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
                TxtTitle.Text = dt.GetDataByEducation(Convert.ToInt16(Id))[0].TITLE;
                TxtSubtitle.Text = dt.GetDataByEducation(Convert.ToInt16(Id))[0].SUBTITLE;
                TxtExplanation.Text = dt.GetDataByEducation(Convert.ToInt16(Id))[0].EXPLANATION;
                TxtDate.Text = dt.GetDataByEducation(Convert.ToInt16(Id))[0].DATE;
                TxtAverage.Text = dt.GetDataByEducation(Convert.ToInt16(Id))[0].AVERAGE;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationUpdate(TxtTitle.Text, TxtSubtitle.Text, TxtExplanation.Text, TxtAverage.Text, TxtDate.Text, Convert.ToInt16(TxtId.Text));
            Response.Redirect("~/Education/AdminEducations.Aspx");
        }
    }
}