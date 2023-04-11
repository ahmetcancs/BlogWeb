using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class AdminEducations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            Repeater1.DataSource = dt.ListEducation();
            Repeater1.DataBind();
        }
    }
}