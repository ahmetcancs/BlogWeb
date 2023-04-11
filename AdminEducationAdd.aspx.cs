using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class AdminEducationAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            dt.EducationAdd(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text,TextBox5.Text);
            Response.Redirect("AdminEducations.Aspx");
        }
    }
}