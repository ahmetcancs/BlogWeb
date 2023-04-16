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
            DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter(); 
            Repeater1.DataSource = dt.AboutList();
            Repeater1.DataBind();

            DataSetTableAdapters.TBLEXPERIENCETableAdapter dt2 = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            Repeater2.DataSource = dt2.ListExperience();
            Repeater2.DataBind();

            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt3 = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            Repeater3.DataSource = dt3.ListEducation();
            Repeater3.DataBind();

            DataSetTableAdapters.TBLSKILLSTableAdapter dt4 = new DataSetTableAdapters.TBLSKILLSTableAdapter();
            Repeater4.DataSource = dt4.ListSkill();
            Repeater4.DataBind();

            DataSetTableAdapters.TBLHOBBIESTableAdapter dt5 = new DataSetTableAdapters.TBLHOBBIESTableAdapter();
            Repeater5.DataSource = dt5.ListHobby();
            Repeater5.DataBind();

            DataSetTableAdapters.TBLEVENTSTableAdapter dt6 = new DataSetTableAdapters.TBLEVENTSTableAdapter();
            Repeater6.DataSource = dt6.ListEvent();
            Repeater6.DataBind();

            DataSetTableAdapters.TBLABOUTTableAdapter dt7 = new DataSetTableAdapters.TBLABOUTTableAdapter();
            Repeater7.DataSource = dt7.AboutList();
            Repeater7.DataBind();
        }
    }
}