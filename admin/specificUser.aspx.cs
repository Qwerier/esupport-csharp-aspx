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

namespace WebApplication1.admin
{
    public partial class spc : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader UserRead;
        SqlConnection cnDelete;
        SqlCommand cmdDelete;
        string Firstname;
        string Lastname;
        string Username;
        string Email;
        string Userid;
        string u_id;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           string u_id = Request.QueryString["userID"].ToString();
            int U_ID = int.Parse(u_id);
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string SpecificUser = " select FIRSTNAME,LASTNAME,USERNAME,EMAIL_ADDRESS,userID from register where userID='" + u_id + "'";
            cmd = new SqlCommand(SpecificUser, cn);
            UserRead = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (UserRead.Read())
            {
                Firstname = UserRead["FIRSTNAME"].ToString();
                Lastname = UserRead["LASTNAME"].ToString();
                Username = UserRead["USERNAME"].ToString();
                Email = UserRead["EMAIL_ADDRESS"].ToString();

                Userid = UserRead["userID"].ToString();
            }
            txtFname.Text = Firstname;
            txtLname.Text = Lastname;
            txtUname.Text = Username;
            txtEmail.Text = Email;

            txtUid.Text = Userid;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cnDelete = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnDelete.Open();
            string strDel = "delete from register where userID='" + Userid + "'";
            cmdDelete = new SqlCommand(strDel, cnDelete);
            cmdDelete.ExecuteNonQuery();
            Response.Write("<script>alert('This Account Has Been SuccessFully Deleted') </script>");
            txtFname.Text = "";
            txtLname.Text = "";
            txtUname.Text = "";
            txtEmail.Text = "";

            txtUid.Text = "";

        }
    }
}