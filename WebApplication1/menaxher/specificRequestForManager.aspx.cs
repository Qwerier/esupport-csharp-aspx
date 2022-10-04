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


namespace WebApplication1.menaxher
{
    public partial class specificRequestForManager : System.Web.UI.Page
    {
        SqlConnection cnForRequest;
        SqlConnection cnForUser;
        SqlConnection cnForAssignee;
        SqlConnection cn;
        SqlCommand cmd;
        SqlCommand cmdForRequest;
        SqlCommand cmdForUser;
        SqlCommand cmdForAssignee;
        SqlCommand afat;

        SqlDataReader userReader;
        SqlDataReader reqReader;
        SqlDataReader AssigneeReader;

        string requestText;
        
        string requestCategoryText;
        string fName;
        string lName;
        string emailTxt;
        string prioritet;
        string aName;
       
        int uID;
        int rID;
        protected void Page_Load(object sender, EventArgs e)
        {
            string r_ID = Request.QueryString["requestID"].ToString();
            rID = int.Parse(r_ID);
            cnForRequest = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForRequest.Open();
            string strReq = "select requestCategory,request,priority FROM request where requestID= '" + rID + "'";
            cmdForRequest = new SqlCommand(strReq, cnForRequest);
            reqReader = cmdForRequest.ExecuteReader(CommandBehavior.CloseConnection);
            while (reqReader.Read())
            {
                requestText = reqReader["request"].ToString();
                requestCategoryText = reqReader["requestCategory"].ToString();
                prioritet= reqReader["priority"].ToString();
            }
            lblQ.Text = requestText;

            lblCat.Text = requestCategoryText;
            Label1.Text = prioritet;

           
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
            Label2.Text = u_ID;



            userReader.Close();
            TextBox1.Text=DateTime.Now.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cnForAssignee = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForAssignee.Open();
            string assigneeName = ddlAssignee.SelectedItem.ToString();
            string a_name = assigneeName.Trim();
            string strAssignee = "select * from assigneeLogin where FirstName = '" + a_name + "'";
            cmdForAssignee = new SqlCommand(strAssignee, cnForAssignee);
            AssigneeReader = cmdForAssignee.ExecuteReader(CommandBehavior.CloseConnection);
            while (AssigneeReader.Read())
            {
                aName = AssigneeReader["UserName"].ToString();

            }
            AssigneeReader.Close();

            String afati = TextBox2.Text;
            /*SqlConnection cn3= new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn3.Open();
            
            SqlCommand cmd= new SqlCommand()
            */

            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string strassignee = "insert into requestArrivedAtAssignee(requestID,userID,department,assigneeName)" + "values('" + rID + "','"+ uID + "','" + ddlDept.SelectedItem + "','" + aName + "')";
            cmd = new SqlCommand(strassignee, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            //Fut afatet te request
            SqlConnection cn1= new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn1.Open();
           

            String deadline = " update request set datesub = '"  + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', deadline= '" + afati + "' where userID ='"+uID+"'";
            afat = new SqlCommand(deadline, cn1);
            afat.ExecuteNonQuery();
            Response.Redirect("requestArrivedForManager.aspx");
        }

        protected void ddlAssignee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToString();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}