using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Data;
using System;
using System.Configuration;


namespace WebApplication1.Reports
{
    public partial class order : System.Web.UI.Page
    {
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();
            string queryRequest = "select orderid,requestID,price,qtyn,datefororder FROM orderdetails ";
            da = new SqlDataAdapter(queryRequest, sqlConn);
            ds = new DataSet();
            da.Fill(ds);
            gvAllMyQueries.DataSource = ds;
            gvAllMyQueries.DataBind();
            sqlConn.Close();
        }
    }
}