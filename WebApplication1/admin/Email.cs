using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace WebApplication1.admin
{
    public class Email
    {
        public Email()
        {
            this.Attachments = new List<Attachment>();
        }
        public int MessageNumber { get; set; }
        public string From { get; set; }
        public string Subject { get; set; }
        public string solution { get; set; }
        public string datesub { get; set; }
        public string deadline { get; set; }
        public string requestCategory { get; set; }
        public string Body { get; set; }
        public DateTime DateSent { get; set; }
        public List<Attachment> Attachments { get; set; }
    }
}