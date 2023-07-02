using MailKit.Net.Smtp;
using MailKit.Security;
using MimeKit;
using MimeKit.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hospital_Site.Class
{
	public class Brain
	{
		public void sendemail(string message, string emails)
		{
			try
			{
                var email = new MimeMessage();
                email.From.Add(MailboxAddress.Parse("maggie.schumm@ethereal.email"));
                email.To.Add(MailboxAddress.Parse(emails));
                email.Subject = "Test Subject";
                email.Body = new TextPart(TextFormat.Html) { Text = "Hey World!!" };

                var smtp = new SmtpClient();
                smtp.Connect("smtp.ethereal.email", 587, SecureSocketOptions.StartTls);//https://github.com/JiboGithub/EmailSender
                smtp.Authenticate("maggie.schumm@ethereal.email", "A8SRTpjYhjSX26rJdT");
                smtp.Send(email);
                smtp.Disconnect(true);
            }
			catch (Exception ex)
			{
				throw ex;
			}
		}
	
	}
}