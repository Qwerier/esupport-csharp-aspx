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
    public partial class specificRequestAssignee : System.Web.UI.Page
    {
        SqlConnection cnForRequest;
        SqlConnection cnForUser;
        SqlConnection cn;
        SqlConnection cn_request;
        SqlCommand cmdForRequest;
        SqlCommand cmdForUser;
        SqlCommand cmd;
        SqlCommand cmd_request;

        SqlDataReader userReader;
        SqlDataReader reqReader;


        string requestText;
        string requestCategoryText;
        string reqDeadline;
        string fName;
        string lName;
        string emailTxt;
        
        int uID;
        int rID;
        decimal vonesa;
        TimeSpan ts;


        protected void Page_Load(object sender, EventArgs e)
        {

            string r_ID = Request.QueryString["requestID"].ToString();
            rID = int.Parse(r_ID);
            cnForRequest = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForRequest.Open();
            string strReq = "select requestCategory,request,deadline from request where requestID= '" + rID + "'";
            cmdForRequest = new SqlCommand(strReq, cnForRequest);
            reqReader = cmdForRequest.ExecuteReader(CommandBehavior.CloseConnection);
            while (reqReader.Read())
            {
                requestText = reqReader["request"].ToString();
                requestCategoryText = reqReader["requestCategory"].ToString();
                reqDeadline = reqReader["deadline"].ToString();
            }
            txtVal.Text = requestText;
            txtNext.Text = requestCategoryText;
            TextBox1.Text = reqDeadline;
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
            Texfname.Text = fName;
            TexLname.Text = lName;
            TexEmail.Text = emailTxt;
           
            userReader.Close();

            


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string aID = Session["uID"].ToString();
            int assigneeID = int.Parse(aID);
            DateTime d1 = System.DateTime.Now;

            //Vonesa
            DateTime d2 = DateTime.Parse(TextBox1.Text);
            int rez = DateTime.Compare(d1, d2);
            if(rez > 0)
            {
                ts = d1 - d2;
                vonesa = Convert.ToDecimal(ts.Hours);

                Response.Write("<script>alert('Ju jeni me vonese')</script>");
                
            }
            



            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
           
            string str = "insert into processedRequest(requestID,solution,assigneeID,userID,vonesa)" + " values('" + rID + "','" + txtSolution.Text.Trim() + "','" + assigneeID + "','" + uID + "','" + vonesa + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();
          
            
            cn_request = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn_request.Open();

            string str_request = "update request set solution = '" + txtSolution.Text.Trim() + "' where requestId = '" + rID + "' ";
            cmd_request = new SqlCommand(str_request, cn_request);
            cmd_request.ExecuteNonQuery();
            
            Response.Redirect("requestArrivedForAssignee.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}