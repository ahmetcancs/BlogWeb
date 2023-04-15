using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminHobbyAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBLHOBBIESTableAdapter dt = new DataSetTableAdapters.TBLHOBBIESTableAdapter();
            dt.HobbyAdd(TxtHobby.Text);
            Response.Redirect("AdminHobbies.Aspx");
            
        }
    }
}