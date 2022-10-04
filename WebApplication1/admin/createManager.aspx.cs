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

namespace WebApplication1.admin
{
    public partial class CreateManageraspx : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlConnection cn2;
        SqlCommand cmd;
        SqlCommand cmdForUserName;
        SqlDataReader dr;
        SqlDataReader serv;
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn2.Open();
            string queryForUserName = "Select USERNAME from managerLogin where UserName = '" + txtAsiUname.Text.Trim() + "' ";

            cmdForUserName = new SqlCommand(queryForUserName, cn2);
            dr = cmdForUserName.ExecuteReader(CommandBehavior.CloseConnection);
            if (dr.HasRows)
            {
                Response.Write("<script>alert('Username you have entered already exists.Please enter another username!')</script>");
            }

            
            else
            {
                SqlConnection cn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn3.Open();
                string dep = "select idDept FROM department where department = '" + ddlDept.SelectedValue + "'";
                SqlCommand sq = new SqlCommand(dep, cn3);
                sq.ExecuteNonQuery();
                SqlDataReader serv = sq.ExecuteReader();
                while (serv.Read())
                {
                    id = serv["idDept"].ToString();


                }
                serv.Close();
                int id1 = int.Parse(id);
                cn3.Close();

                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string strassignee = "insert into managerLogin(FirstName,Lastname,UserName,Password,ConfirmPassword,dobDays,dobMonths,Year,department,email,idDept)" + "values('" + txtFname.Text.Trim() + "','" + txtLname.Text.Trim() + "','" + txtAsiUname.Text.Trim() + "','" + txtPswd.Text.Trim() + "','" + txtCopswd.Text.Trim() + "','" + ddlDays.SelectedValue + "','" + ddlMonth.SelectedValue + "','" + txtYear.Text.Trim() + "','" + ddlDept.SelectedValue + "','" + txtEmail.Text.Trim() + "','"+id1+"')";
                cmd = new SqlCommand(strassignee, cn);
                cmd.ExecuteNonQuery();
                txtFname.Text = "";
                txtLname.Text = "";
                txtAsiUname.Text = "";
                Response.Redirect("adminHome.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('You have chosen not to register!')</script>");
            Response.Redirect("adminHome.aspx");
        }
    }
}