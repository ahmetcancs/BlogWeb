using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                 DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter();
            TextBox1.Text = dt.AboutList()[0].NAME;
            TextBox2.Text = dt.AboutList()[0].SURNAME;
            TextBox3.Text = dt.AboutList()[0].ADDRESS;
            TextBox4.Text = dt.AboutList()[0].MAIL;
            TextBox5.Text = dt.AboutList()[0].PHONE;
            TextBox6.Text = dt.AboutList()[0].NOTE;
            TextBox7.Text = dt.AboutList()[0].PHOTO;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLABOUTTableAdapter dt1 = new DataSetTableAdapters.TBLABOUTTableAdapter();
            dt1.AboutUpdate(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
            Response.Redirect("Default.Aspx");
        }
    }
}