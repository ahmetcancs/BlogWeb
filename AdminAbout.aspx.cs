using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
            DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter();
            TxtName.Text = dt.AboutList()[0].NAME;
            TxtSurname.Text = dt.AboutList()[0].SURNAME;
            TxtAddress.Text = dt.AboutList()[0].ADDRESS;
            TxtMail.Text = dt.AboutList()[0].MAIL;
            TxtPhone.Text = dt.AboutList()[0].PHONE;
            TxtNote.Text = dt.AboutList()[0].NOTE;
            TxtPhoto.Text = dt.AboutList()[0].PHOTO;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter();
            dt.AboutUpdate(TxtName.Text, TxtSurname.Text, TxtAddress.Text, TxtMail.Text, TxtPhone.Text, TxtNote.Text, TxtPhoto.Text);
            Response.Redirect("Default.Aspx");
        }
    }
}