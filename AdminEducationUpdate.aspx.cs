using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class AdminEducationUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txtid.Enabled = false; //unchangeable area
            Txtid.Text = x.ToString();


            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
                TxtTitle.Text = dt.GetDataByEducation(Convert.ToInt16(x))[0].TITLE;
                TxtSubtitle.Text = dt.GetDataByEducation(Convert.ToInt16(x))[0].SUBTITLE;
                TxtExplanation.Text = dt.GetDataByEducation(Convert.ToInt16(x))[0].EXPLANATION;
                TxtDate.Text = dt.GetDataByEducation(Convert.ToInt16(x))[0].DATE;
                TxtAverage.Text = dt.GetDataByEducation(Convert.ToInt16(x))[0].AVERAGE;
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationUpdate(TxtTitle.Text, TxtSubtitle.Text, TxtExplanation.Text, TxtAverage.Text, TxtDate.Text, Convert.ToInt16(Txtid.Text));
            Response.Redirect("AdminEducations.Aspx");
        }
    }
}