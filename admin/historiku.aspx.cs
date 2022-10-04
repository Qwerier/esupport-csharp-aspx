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
using System.Collections.Generic;
using OpenPop.Pop3;
using OpenPop.Mime;
using System.Linq;
using System.Net.Mail;
using System.Net;

namespace WebApplication1.admin
{
    public partial class historiku : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand sq;
        SqlDataReader serv;
        string sol;
        string afat;
        string datesub;
        string cat;

        protected List<Email> Emails
        {
            get { return (List<Email>)ViewState["Emails"]; }
            set { ViewState["Emails"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.Read_Emails();
            }
        }

        private void Read_Emails()
        {
            Pop3Client pop3Client;
            if (Session["Pop3Client"] == null)
            {
                pop3Client = new Pop3Client();
                pop3Client.Connect("pop.gmail.com", 995, true);
                pop3Client.Authenticate("programimdetyre@gmail.com", "programi2021");
                Session["Pop3Client"] = pop3Client;
            }
            else
            {
                pop3Client = (Pop3Client)Session["Pop3Client"];
            }
            int count = pop3Client.GetMessageCount();
            this.Emails = new List<Email>();
            int counter = 0;




            for (int i = count; i >= 1; i--)
            {
                Message message = pop3Client.GetMessage(i);
                //PJESA SUBJEKTIT
                String subjekt = message.Headers.Subject;
                cn = new SqlConnection("Data Source=localhost;Initial Catalog=OHD;Integrated Security=True");
                cn.Open();
                //Merr nga databaza  per te pare historikun
                string ser = "select solution,deadline,datesub,requestCategory FROM request WHERE requestID='" + int.Parse(subjekt) + "'";
                sq = new SqlCommand(ser, cn);
                sq.ExecuteNonQuery();
                serv = sq.ExecuteReader();
                while (serv.Read())
                {
                    sol = serv["solution"].ToString();
                    afat = serv["deadline"].ToString();
                    datesub = serv["datesub"].ToString();
                    cat = serv["requestCategory"].ToString();

                }
                serv.Close();


                Email email = new Email()
                {


                    MessageNumber = i,
                    Subject = message.Headers.Subject,
                    DateSent = message.Headers.DateSent,
                    solution = sol,
                    deadline = afat,
                    datesub = datesub,
                    requestCategory = cat,

                    From = string.Format("<a href = 'mailto:{1}'>{0}</a>", message.Headers.From.DisplayName, message.Headers.From.Address),
                };
                MessagePart body = message.FindFirstHtmlVersion();
                if (body != null)
                {
                    email.Body = body.GetBodyAsText();
                }
                else
                {
                    body = message.FindFirstPlainTextVersion();
                    if (body != null)
                    {
                        email.Body = body.GetBodyAsText();
                    }
                }
                List<MessagePart> attachments = message.FindAllAttachments();

                foreach (MessagePart attachment in attachments)
                {
                    email.Attachments.Add(new Attachment
                    {
                        FileName = attachment.FileName,
                        ContentType = attachment.ContentType.MediaType,
                        Content = attachment.Body
                    });
                }
                this.Emails.Add(email);
                counter++;
                if (counter > 2)
                {
                    break;
                }
            }
            gvEmails.DataSource = this.Emails;
            gvEmails.DataBind();
        }



        public static void kontrollo(List<Email> Emails)
        {
            int pazgjidhje = 0;
            int vonesa = 0;
            

            foreach (Email em in Emails)
            {
                if (em.solution == "Null")
                {
                    pazgjidhje++;
                }
                DateTime d1 = Convert.ToDateTime(em.datesub);
                DateTime d2 = Convert.ToDateTime(em.deadline);
                int rez = DateTime.Compare(d1, d2);
                if (rez > 0)
                {
                    vonesa++;

                }
                if (pazgjidhje > 3 || vonesa > 3)
                {
                    Email("Nuk mund te zgjidhet",Emails);
                }
                else
                {
                    Email("Do te procedohet",Emails);
                }
            }
        }
        //Dergon seciles adrese nga nje email perkates
        public static void Email(string htmlString, List<Email> lista)
        {
            foreach (var e in lista)
            {


                try
                {
                    MailMessage message = new MailMessage();
                    SmtpClient smtp = new SmtpClient();
                    message.From = new MailAddress("programimdetyre@gmail.com");
                    message.To.Add(new MailAddress(e.From));
                    message.Subject = e.Subject;
                    message.IsBodyHtml = true; //to make message body as html  
                    message.Body = htmlString;
                    smtp.Port = 587;
                    smtp.Host = "smtp.gmail.com"; //for gmail host  
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential("programimdetyre@gmail.com", "programi2021");
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Send(message);
                }
                catch (Exception) { }
            }
        }
        protected void Download(object sender, EventArgs e)
        {
            LinkButton lnkAttachment = (sender as LinkButton);
            GridViewRow row = (lnkAttachment.Parent.Parent.NamingContainer as GridViewRow);
            List<Attachment> attachments = this.Emails.Where(email => email.MessageNumber == Convert.ToInt32(gvEmails.DataKeys[row.RowIndex].Value)).FirstOrDefault().Attachments;
            Attachment attachment = attachments.Where(a => a.FileName == lnkAttachment.Text).FirstOrDefault();
            Response.AddHeader("content-disposition", "attachment;filename=" + attachment.FileName);
            Response.ContentType = attachment.ContentType;
            Response.BinaryWrite(attachment.Content);
            Response.End();
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Repeater rptAttachments = (e.Row.FindControl("rptAttachments") as Repeater);
                List<Attachment> attachments = this.Emails.Where(email => email.MessageNumber == Convert.ToInt32(gvEmails.DataKeys[e.Row.RowIndex].Value)).FirstOrDefault().Attachments;
                rptAttachments.DataSource = attachments;
                rptAttachments.DataBind();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            kontrollo(this.Emails);
        }
    }
}



