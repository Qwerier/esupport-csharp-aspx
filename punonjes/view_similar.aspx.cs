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

namespace WebApplication1.punonjes
{
    public partial class view_similar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
            private void BindGrid()
            {
                string constr = ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select Id, filename from files";
                        cmd.Connection = con;
                        con.Open();
                        GridView1.DataSource = cmd.ExecuteReader();
                        GridView1.DataBind();
                        con.Close();
                    }
                }
            }
            protected void DownloadFile(object sender, EventArgs e)
            {
                int id = int.Parse((sender as LinkButton).CommandArgument);
                byte[] bytes;
                string fileName, contentType;
                string constr = ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select filename, data, category from files where Id=@Id";
                        cmd.Parameters.AddWithValue("@Id", id);
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            bytes = (byte[])sdr["data"];
                            contentType = sdr["category"].ToString();
                            fileName = sdr["filename"].ToString();
                        }
                        con.Close();
                    }
                }
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = contentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();
            }
        }


    }
    
