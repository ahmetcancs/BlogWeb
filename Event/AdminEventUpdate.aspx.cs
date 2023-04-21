using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEventUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            TxtId.Enabled = false; //unchangeable area
            TxtId.Text = Id.ToString();

            if (Page.IsPostBack == false)
            {
				DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter dt = new DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter();
                TxtEvent.Text = dt.GetDataByEvent(Convert.ToInt16(Id))[0].EVENT;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
			DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter dt = new DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter();
            dt.EventUpdate(TxtEvent.Text, Convert.ToInt16(TxtId.Text));
            Response.Redirect("AdminEvents.Aspx");
        }
    }
}