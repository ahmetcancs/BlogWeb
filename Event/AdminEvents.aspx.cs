using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEVENTSTableAdapter dt = new DataSetTableAdapters.TBLEVENTSTableAdapter();
            RptEvent.DataSource = dt.ListEvent();
            RptEvent.DataBind();
        }
    }
}