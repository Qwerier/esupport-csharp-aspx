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
using System.IO;

namespace WebApplication1.admin
{
    public partial class add : System.Web.UI.Page
    {
        SqlConnection cnAdd;
        SqlCommand cmdAdd;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection cn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn3.Open();
            string dep = "select idCat FROM category where categories = '" + DropDownList1.SelectedValue + "'";
            SqlCommand sq = new SqlCommand(dep, cn3);
            sq.ExecuteNonQuery();
            SqlDataReader serv = sq.ExecuteReader();
            while (serv.Read())
            {
                id = serv["idCat"].ToString();


            }
            serv.Close();
            int id1 = int.Parse(id);
            cn3.Close();
          
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);
            cnAdd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnAdd.Open();
            string query = "insert into services(service,price,category,image,idCat) values (@service, @price, @category,@image,@idCat)";
           // string addCat = "insert into services(service,price,category)" + "values('" + txtNewServ.Text.Trim() + "','" + Convert.ToDecimal(txtNewServ0.Text) + "', '" + ddlCat.SelectedValue + "')";
            cmdAdd = new SqlCommand(query);
            cmdAdd.Connection = cnAdd;
            cmdAdd.Parameters.AddWithValue("@service", txtNewServ.Text);
            cmdAdd.Parameters.AddWithValue("@price", SqlDbType.Decimal).Value=Convert.ToDecimal(TextBox1.Text);
            cmdAdd.Parameters.AddWithValue("@category", DropDownList1.SelectedValue.ToString());
            cmdAdd.Parameters.AddWithValue("@image", link);
            cmdAdd.Parameters.AddWithValue("@idCat", id1);

            cmdAdd.ExecuteNonQuery();
            cnAdd.Close();

            txtNewServ.Text = "";
        }

        protected void txtNewServ_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}