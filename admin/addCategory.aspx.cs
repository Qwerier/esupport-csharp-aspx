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


namespace WebApplication1.admin
{
    public partial class addCategory : System.Web.UI.Page
    {
        SqlConnection cnAdd;
        SqlCommand cmdAdd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            cnAdd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnAdd.Open();
            string addCat = "insert into category(categories)" + "values('" + txtNewCategory.Text.Trim() + "')";
            cmdAdd = new SqlCommand(addCat, cnAdd);
            cmdAdd.ExecuteNonQuery();
            txtNewCategory.Text = "";
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}