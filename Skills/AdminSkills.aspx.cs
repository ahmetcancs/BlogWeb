using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSkills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter dt = new DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter();
            RptSkills.DataSource = dt.ListSkill();
            RptSkills.DataBind();
        }
    }
}