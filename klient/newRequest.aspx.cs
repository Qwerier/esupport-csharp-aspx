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
    public partial class newRequest : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlConnection cn1;
        SqlConnection cn2;
        SqlCommand cmd;
        SqlCommand bs;
        SqlConnection cnWelcm;
        SqlCommand cmdWelcm;
        SqlCommand sq;
        SqlDataReader serv;
        SqlDataReader drWelcm;
        SqlDataReader datas;
        string Firstname;
        string Lastname;
        string price;
        string id;
        string idc;
        SqlDataReader serv1;

        protected void Page_Load(object sender, EventArgs e)
        {
            string user_n = Session["USERNAME"].ToString();
            cnWelcm = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnWelcm.Open();

            string welcmUser = "select FIRSTNAME,LASTNAME from register where USERNAME='" + user_n + "'";
            cmdWelcm = new SqlCommand(welcmUser, cnWelcm);
            cmdWelcm.ExecuteNonQuery();
            drWelcm = cmdWelcm.ExecuteReader();
            while (drWelcm.Read())
            {
                Firstname = drWelcm["FIRSTNAME"].ToString();
                Lastname = drWelcm["LASTNAME"].ToString();

            }
            

            lblWelcome.Text = "Welcome:   " + Firstname + "&nbsp" + "&nbsp" + Lastname + "<br>";
            lblLtime.Text = " Your Login Date and Time Is:" + "&nbsp" + "&nbsp" + System.DateTime.Now;
            Label1.Text = price;
            }

           


        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=localhost;Initial Catalog=OHD;Integrated Security=True");
            cn.Open();

            string ser = "select serviceID FROM services WHERE service='" + ddlServ.SelectedValue + "'";
            sq = new SqlCommand(ser, cn);
            sq.ExecuteNonQuery();
            serv = sq.ExecuteReader();
            while (serv.Read())
            {
                id = serv["serviceID"].ToString();


            }
            serv.Close();
            int id1 = int.Parse(id);

            SqlConnection cn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn3.Open();
            string cat = "select idCat FROM category where categories = '" + ddlCategory.SelectedValue + "'";
            SqlCommand sq1 = new SqlCommand(cat, cn3);
            sq.ExecuteNonQuery();
             serv1 = sq1.ExecuteReader();
            while (serv1.Read())
            {
                idc = serv1["idCat"].ToString();


            }
            serv1.Close();
            int catid = int.Parse(idc);
           

            string u_id = Session["uID"].ToString();
            Session["uID"] = u_id;
            int user_id = int.Parse(u_id);
 

            cn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn2.Open();
            string b = "select price FROM services WHERE service= '" + ddlServ.SelectedValue + "'";
            bs = new SqlCommand(b, cn2);
            bs.ExecuteNonQuery();
            datas = bs.ExecuteReader();
            while (datas.Read())
            {
                price = datas["price"].ToString();

            }
           
            datas.Close();
           


            //Hedhim id e sherbimit te kerkesa lidhje e re 
            cn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn1.Open();
            DateTime time = DateTime.Now;
            string str = "insert into request(userID,request,requestCategory,reqServ,time,ServiceID,price,qtyn,idCat) values('" + u_id + "','" + txtRequest.Text.Trim() + "','" + ddlCategory.SelectedValue + "','" + ddlServ.SelectedValue + "','" + time.ToString("yyyy-MM-dd HH:mm:ss") + "','" + id1 + "','" + Convert.ToDecimal(price) + "','" + Convert.ToInt16(DropDownList1.SelectedValue) + "', '"+ catid +"')";
            cmd = new SqlCommand(str, cn1);
            cmd.ExecuteNonQuery();

            txtRequest.Text = "";
            Response.Write("<script>alert(' Kerkesa u dergua te administratori me sukses')</script>");

            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            Response.Redirect("klientHome.aspx");
        }

        protected void ddlServ_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}