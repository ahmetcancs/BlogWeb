using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 

namespace BlogWeb
{
    public partial class AdminExperienceDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ToInt16 because we signed ID *smallint*
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            dt.ExperienceDelete(Convert.ToInt16(Id));
            Response.Redirect("AdminExperiences.Aspx");
        }
    }
}