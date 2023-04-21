using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEducationDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
			DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationDelete(Convert.ToInt16(Id));
            Response.Redirect("~/Education/AdminEducations.Aspx");
        }
    }
}