using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class AdminEducationDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationDelete(Convert.ToInt16(x));
            Response.Redirect("AdminEducations.Aspx");
        }
    }
}