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
using System.Net.Mail;
using System.Net;

namespace WebApplication1.klient
{
    public partial class myUnsolvedQueries : System.Web.UI.Page
    {

        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;
        int userID;
        string rid;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string uID = Session["uID"].ToString();
            userID = int.Parse(uID);
            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();

            string queryRequest = "select requestID, request,time from request where userID = '" + userID + "' and solution is Null";
            SqlCommand sq2 = new SqlCommand(queryRequest, sqlConn);
            sq2.ExecuteNonQuery();
            SqlDataReader id = sq2.ExecuteReader();

            while (id.Read())
            {
               rid= id["requestID"].ToString();
            }
            id.Close();

            da = new SqlDataAdapter(queryRequest, sqlConn);
            ds = new DataSet();
            da.Fill(ds);
            gvAllMyQueries.DataSource = ds;
            gvAllMyQueries.DataBind();
            sqlConn.Close();
        }
        public static void Email(string htmlString,string subj)
        {

            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("programimdetyre@gmail.com");
                message.To.Add(new MailAddress("programimdetyre@gmail.com"));
                message.Subject=subj;
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = htmlString;
                smtp.Port = 465;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("programimdetyre@gmail.com", "programi2021");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
            }
            catch (Exception) { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Email("Ju luterm procesoni kerkesat", rid);
        }
    }
}