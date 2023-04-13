using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEducationAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationAdd(TxtTitle.Text, TxtSubtitle.Text, TxtExplanation.Text, TxtAverage.Text,TxtAverage.Text);
            Response.Redirect("AdminEducations.Aspx");
        }
    }
}