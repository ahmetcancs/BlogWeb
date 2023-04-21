using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminExperienceAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
			DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            dt.ExperienceAdd(TxtTitle.Text, TxtSubtitle.Text, TxtExplanation.Text, TxtDate.Text);
            Response.Redirect("AdminExperiences.Aspx");
        }
    }
}