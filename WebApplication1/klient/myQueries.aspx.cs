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


namespace WebApplication1.klient
{
    public partial class myQueries : System.Web.UI.Page
    {
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;
        public SqlConnection sqlConn1;

        protected void Page_Load(object sender, EventArgs e)
        {
            string uID = Session["uID"].ToString();
            int userID = int.Parse(uID);

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("requestID");
            dt.Columns.Add("request");
            dt.Columns.Add("solution");
            dt.Columns.Add("qtyn");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");

            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();
            string queryRequest = "select requestID,request,solution,qtyn,price from request where userID = '" + userID + "' and solution is not Null";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = queryRequest;
            cmd.Connection = sqlConn;
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            ds = new DataSet();
            da.Fill(ds);

            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                
               
                dr["requestID"] = ds.Tables[0].Rows[i]["requestID"].ToString();
                dr["request"] = ds.Tables[0].Rows[0]["request"].ToString();

                dr["solution"] = ds.Tables[0].Rows[i]["solution"].ToString();
                dr["qtyn"] = ds.Tables[0].Rows[i]["qtyn"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                double price = Convert.ToDouble(ds.Tables[0].Rows[i]["price"].ToString());
                int qty = Convert.ToInt16(ds.Tables[0].Rows[i]["qtyn"].ToString());
                double totalprice = price * qty;
                dr["totalprice"] = totalprice;
                dt.Rows.Add(dr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.FooterRow.Cells[5].Text = grandTotal().ToString();
                //findOrderId();
                Label2.Text = DateTime.Now.ToShortDateString();



            }
                

        }

        public double grandTotal()
        {
            DataTable dt = new DataTable();
            int nrow = dt.Rows.Count;
            int i = 0;
            double gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToDouble(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;

            }
            return gtotal;


        }
/*
        public void findOrderId()
        {
            String pass = "abcdefghijklmnopqrstuvxyz0123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;



            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();
            Label1.Text = orderid;
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            for (int i=0; i<dt.Rows.Count-1; i++)
            {
               
                String update = "insert into orderdetails(requestID,request,price,qtyn,dateoforder) values('" + dt.Rows[i]["requestID"] + "','" + dt.Rows[i]["request"] + "','" + dt.Rows[i]["price"] + "', '" + dt.Rows[i]["qtyn"] + "','" + Label2.Text + "')";
                sqlConn1 = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                sqlConn1.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = update;
                cmd1.Connection = sqlConn1;
                cmd1.ExecuteNonQuery();
                sqlConn1.Close();
                Response.Redirect("bill.aspx");
                

            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}


        

    


        


              
        
    


