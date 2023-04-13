using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminExperienceUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            TxtId.Enabled = false; //unchangeable area
            TxtId.Text = Id.ToString();

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
                TxtTitle.Text = dt.GetDataByExperience(Convert.ToInt16(Id))[0].TITLE;
                TxtSubtitle.Text = dt.GetDataByExperience(Convert.ToInt16(Id))[0].SUBTITLE;
                TxtExplanation.Text = dt.GetDataByExperience(Convert.ToInt16(Id))[0].EXPLANATION;
                TxtDate.Text = dt.GetDataByExperience(Convert.ToInt16(Id))[0].DATE;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            dt.ExperienceUpdate(TxtTitle.Text, TxtSubtitle.Text, TxtExplanation.Text, TxtDate.Text, Convert.ToInt16(TxtId.Text));
            Response.Redirect("AdminExperiences.Aspx");
        }
    }
}