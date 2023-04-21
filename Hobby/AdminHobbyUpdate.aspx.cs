using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminHobbyUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            TxtId.Enabled = false; //unchangeable area
            TxtId.Text = Id.ToString();


            if (Page.IsPostBack == false)
            {
				DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter dt = new DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter();
                TxtHobby.Text = dt.GetDataByHobby(Convert.ToInt16(Id))[0].HOBBY;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
			DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter dt = new DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter();
            dt.HobbyUpdate(TxtHobby.Text, Convert.ToInt16(TxtId.Text));
            Response.Redirect("AdminHobbies.Aspx");
        }
    }
}