using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminExperiences : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            RptExperiences.DataSource = dt.ListExperience();
            RptExperiences.DataBind();
        }
    }
}