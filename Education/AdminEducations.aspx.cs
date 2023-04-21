using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEducations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            RptEducation.DataSource = dt.ListEducation();
            RptEducation.DataBind();
        }
    }
}