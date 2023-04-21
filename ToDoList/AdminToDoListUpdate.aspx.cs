using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
	public partial class AdminToDoListUpdate : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			int Id = Convert.ToInt16(Request.QueryString["ID"]);
			TxtId.Enabled = false; //unchangeable area
			TxtId.Text = Id.ToString();


			if (Page.IsPostBack == false)
			{
				DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter dt = new DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter();
				TxtTitle.Text = dt.GetDataByToDoList(Convert.ToInt16(Id))[0].TITLE;
				TxtDescription.Text = dt.GetDataByToDoList(Convert.ToInt16(Id))[0].DESCRIPTION;
			}
		}

		protected void BtnUpdate_Click(object sender, EventArgs e)
		{
			DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter dt = new DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter();
			dt.ToDoListUpdate(TxtTitle.Text,TxtDescription.Text,Convert.ToInt16(TxtId.Text));
			Response.Redirect("AdminToDoList.Aspx");
		}
	}
}