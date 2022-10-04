﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Request.QueryString["cat"]!= null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();

            }
        }

        

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("services.aspx?cat=Garanci");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("services.aspx?cat=JoGaranci");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
    }
}