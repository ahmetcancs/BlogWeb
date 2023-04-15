using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminHobbies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLHOBBIESTableAdapter dt = new DataSetTableAdapters.TBLHOBBIESTableAdapter();
            RptHobbies.DataSource = dt.ListHobby();
            RptHobbies.DataBind();
        }
    }
}