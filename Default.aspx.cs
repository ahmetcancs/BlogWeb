using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   //ABOUT SECTITON for Eval Function
			DataSet.DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSet.DataSetTableAdapters.TBLABOUTTableAdapter(); 
            Repeater1.DataSource = dt.AboutList();
            Repeater1.DataBind();

			DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter dt2 = new DataSet.DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            Repeater2.DataSource = dt2.ListExperience();
            Repeater2.DataBind();

			DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter dt3 = new DataSet.DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            Repeater3.DataSource = dt3.ListEducation();
            Repeater3.DataBind();

			DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter dt4 = new DataSet.DataSetTableAdapters.TBLSKILLSTableAdapter();
            Repeater4.DataSource = dt4.ListSkill();
            Repeater4.DataBind();

			DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter dt5 = new DataSet.DataSetTableAdapters.TBLHOBBIESTableAdapter();
            Repeater5.DataSource = dt5.ListHobby();
            Repeater5.DataBind();

			DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter dt6 = new DataSet.DataSetTableAdapters.TBLEVENTSTableAdapter();
            Repeater6.DataSource = dt6.ListEvent();
            Repeater6.DataBind();

			DataSet.DataSetTableAdapters.TBLABOUTTableAdapter dt7 = new DataSet.DataSetTableAdapters.TBLABOUTTableAdapter();
            Repeater7.DataSource = dt7.AboutList();
            Repeater7.DataBind();

			DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter dt8 = new DataSet.DataSetTableAdapters.TBLTODOLISTTableAdapter();
			Repeater8.DataSource = dt8.ListToDoList();
			Repeater8.DataBind();
		}
    }
}