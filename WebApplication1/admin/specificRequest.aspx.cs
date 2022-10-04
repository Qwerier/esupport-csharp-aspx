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

namespace WebApplication1.admin
{
    public partial class specificRequest : System.Web.UI.Page
    {
        SqlConnection cnForRequest;
        SqlConnection cnForUser;
        SqlConnection cnForManager;
        SqlConnection cn;
        
        SqlCommand cmd;
        SqlCommand cmdForRequest;
        SqlCommand cmdForUser;
        SqlCommand cmdForManager;
        SqlCommand cmdForPriority;

        SqlDataReader userReader;
        SqlDataReader reqReader;
        SqlDataReader ManagerReader;

        string requestText;
        string ReqServ;
        string requestCategoryText;
        string fName;
        string lName;
        string emailTxt;
        string tpriority;

        string mName;

        int uID;
        int rID;
        protected void Page_Load(object sender, EventArgs e)
        {
            string r_ID = Request.QueryString["requestID"].ToString();
            rID = int.Parse(r_ID);
            cnForRequest = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForRequest.Open();
            string strReq = "select requestCategory,request,reqServ from request where requestID= '" + rID + "'";
            cmdForRequest = new SqlCommand(strReq, cnForRequest);
            reqReader = cmdForRequest.ExecuteReader(CommandBehavior.CloseConnection);
            while (reqReader.Read())
            {
                requestText = reqReader["request"].ToString();
                requestCategoryText = reqReader["requestCategory"].ToString();
                ReqServ = reqReader["reqServ"].ToString();
            }
            lblQ.Text = requestText;

            lblCat.Text = requestCategoryText;
            lblReqServalue.Text = ReqServ;
            reqReader.Close();

            string u_ID = Request.QueryString["userID"].ToString();
            uID = int.Parse(u_ID);
            cnForUser = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForUser.Open();
            string strUser = "select FIRSTNAME,LASTNAME,EMAIL_ADDRESS from register where userID= " + uID + "";
            cmdForUser = new SqlCommand(strUser, cnForUser);
            userReader = cmdForUser.ExecuteReader(CommandBehavior.CloseConnection);

            while (userReader.Read())
            {
                fName = userReader["FIRSTNAME"].ToString();
                lName = userReader["LASTNAME"].ToString();

                emailTxt = userReader["EMAIL_ADDRESS"].ToString();
                

            }

            lblFnamevalue.Text = fName;
            lblLnamevalue.Text = lName;
            lblEmailValue.Text = emailTxt;
            userReader.Close();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cnForManager = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForManager.Open();
            string managerName = ddlManager.SelectedItem.ToString();
            string m_name = managerName.Trim();
            string strManager = "select * from managerLogin where FirstName = '" + m_name + "'";
            cmdForManager = new SqlCommand(strManager, cnForManager);
            ManagerReader = cmdForManager.ExecuteReader(CommandBehavior.CloseConnection);
            while (ManagerReader.Read())
            {
                mName = ManagerReader["UserName"].ToString();

            }

            if (RadioButton1.Checked == true)
            {
                tpriority = "Ulet";
            }
            else if (RadioButton2.Checked == true)
            {
                tpriority = "Larte";
            }
           
            SqlConnection cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                 
            String insertpr = "update  request set priority ='" + tpriority + "' where userID='"+uID+"'";
            cn1.Open();
            cmdForPriority = new SqlCommand(insertpr, cn1);
            cmdForPriority.ExecuteNonQuery();

            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string strassignee = "insert into requestArrivedAtManager(requestID,userID,department,managerName)" + "values('" + rID + "','" + uID + "','" + ddlDept.SelectedItem + "','" + mName + "')";
            cmd = new SqlCommand(strassignee, cn);
            cmd.ExecuteNonQuery();


            

            Response.Redirect("requestArrivedForAdmin.aspx");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Email("I nderuar" + lblFnamevalue.Text +  lblLnamevalue.Text + "kerkesa juaj e kategorise"+ requestCategoryText+ "po procesohet");
             
        }

        public static void Email(string htmlString)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("banushi.alda8@gmail.com");
                message.To.Add(new MailAddress("lblEmailValue.Text"));
                message.Subject = "Procesim Kerkese";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = htmlString;
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("banushi.alda8@gmail.com", "password");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
            }
            catch (Exception) { }
        }

        protected void ddlManager_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
    
 