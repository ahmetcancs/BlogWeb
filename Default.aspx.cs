﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   //ABOUT SECTITON for Eval Function
            DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter(); 
            Repeater1.DataSource = dt.ListAbout();
            Repeater1.DataBind();
        }
    }
}