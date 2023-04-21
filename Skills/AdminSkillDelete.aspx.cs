using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSkillDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TBLSKILLSTableAdapter dt = new DataSetTableAdapters.TBLSKILLSTableAdapter();
            dt.SkillDelete(Convert.ToInt16(Id));
            Response.Redirect("AdminSkills.aspx");
        }
    }
}