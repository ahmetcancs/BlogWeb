using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogWeb.DataSet;
namespace BlogWeb
{
	public partial class AdminToDoList : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter dt = new DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter();
			RptToDoList.DataSource = dt.ListToDoList();
			RptToDoList.DataBind();
		}
	}
}