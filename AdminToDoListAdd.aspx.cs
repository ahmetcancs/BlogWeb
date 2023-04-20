using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
	public partial class AdminToDoListAdd : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void BtnAdd_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TBLTODOLISTTableAdapter dt = new DataSetTableAdapters.TBLTODOLISTTableAdapter();
			dt.ToDoListAdd(TxtTitle.Text,TxtDescription.Text);
			Response.Redirect("AdminToDoList.aspx");
		}
	}
}