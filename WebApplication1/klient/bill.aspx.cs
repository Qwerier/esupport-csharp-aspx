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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace WebApplication1.klient
{
    public partial class bill : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text = Request.QueryString["orderid"];
            Label7.Text = Label5.Text;
            findorderdate(Label7.Text);
            showgrid(Label7.Text);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("requestID");
            dt.Columns.Add("request");
            dt.Columns.Add("qtyn");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");

            SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);

            String myquery = "select * from orderdetails where orderid='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            decimal grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["requestID"] = ds.Tables[0].Rows[i]["requestID"].ToString();
                dr["request"] = ds.Tables[0].Rows[i]["request"].ToString();
                dr["qtyn"] = ds.Tables[0].Rows[i]["qtyn"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["qtyn"].ToString());
                decimal totalprice = price * quantity;
                dr["totlaprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();
        }


        private void findorderdate(String Orderid)
        {
            String myquery = "Select * from orderdetails where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label6.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
            }
            con.Close();
        }



        private void exportpdf()
        {
            Response.ContentType = "appliacation/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel2.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
    }
}