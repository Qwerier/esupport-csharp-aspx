using System;
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

namespace WebApplication1
{
    public partial class forgotPwdCommon : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // string userValue = ddlUser.SelectedValue;

            if (ddlUser.SelectedValue == "Klient")
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string str = "insert into forgotPswd(UserName,Email_Address)" + "values('" + txtUname.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


                cmd = new SqlCommand(str, cn);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Your Request Has Been Sent To Administrator')</script>");
                txtUname.Text = "";
                txtEmail.Text = "";
                Response.Redirect("Home.aspx");
            }
            else if (ddlUser.SelectedValue == "Menaxher")
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string Assigneepswd = "insert into ManagerPswd(UserName,Email_Address)" + "values('" + txtUname.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


                cmd = new SqlCommand(Assigneepswd, cn);

                cmd.ExecuteNonQuery();
                txtUname.Text = "";
                txtEmail.Text = "";
                Response.Redirect("Home.aspx");
            }
            else if (ddlUser.SelectedValue == "Punonjes")
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string Assigneepswd = "insert into AssigneePswd(UserName,Email_Address)" + "values('" + txtUname.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


                cmd = new SqlCommand(Assigneepswd, cn);

                cmd.ExecuteNonQuery();
                txtUname.Text = "";
                txtEmail.Text = "";
                Response.Redirect("Home.aspx");
            }
        }
    }
    }
