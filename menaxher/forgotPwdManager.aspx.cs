﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace WebApplication1.menaxher
{
    public partial class forgotPwdManager : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string managerpswd = "insert managerPswd(UserName,Email_Address)" + "values('" + txtUnamelogin.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


            cmd = new SqlCommand(managerpswd, cn);

            cmd.ExecuteNonQuery();
            txtUnamelogin.Text = "";
            txtEmail.Text = "";

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("managerMaster.master");
        }
    }
}