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

namespace WebApplication1.menaxher
{
    public partial class new_file : System.Web.UI.Page
    {
        SqlConnection cnAdd;
        SqlCommand cmdAdd;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload(object sender, EventArgs e)
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

               

            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            String cat = DropDownList1.SelectedValue.ToString();
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);
            cnAdd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            string query = "insert into files values (@filename,@category,@data,@idCat)";
            cmdAdd = new SqlCommand(query);
            cmdAdd.Connection = cnAdd;
            cmdAdd.Parameters.AddWithValue("@filename", filename);
            cmdAdd.Parameters.AddWithValue("@category", cat);
            cmdAdd.Parameters.AddWithValue("@data", bytes);
            cmdAdd.Parameters.AddWithValue("@idCat", id1);
            cnAdd.Open();
            cmdAdd.ExecuteNonQuery();
            cnAdd.Close();

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ddlCat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}