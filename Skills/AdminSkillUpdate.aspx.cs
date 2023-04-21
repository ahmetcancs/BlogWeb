using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSkillUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["ID"]);
            TxtId.Enabled = false;
            TxtId.Text = Id.ToString();
            if(Page.IsPostBack == false)
            {
				DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter dt = new DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter();
				TxtSkill.Text = dt.GetDataBySkill(Convert.ToInt16(Id))[0].SKILL;
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter dt = new DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter();
            dt.SkillUpdate(TxtSkill.Text,Convert.ToInt16(TxtId.Text));
            Response.Redirect("AdminSkills.Aspx");
        }
    }
}