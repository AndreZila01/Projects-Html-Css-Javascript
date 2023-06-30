using Hospital_Site.Class;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Site.aspx
{
	public partial class LoginS : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        [WebMethod]
        public async static Task<string> checkUser(string username, string password)
        {
            var client = new RestClient($"https://localhost:44391/api/login");
            var request = new RestRequest();
            request.Method = Method.Get;
            //([FromHeader] string username, [FromHeader] string pass)
            request.AddHeader("username", $"{Data.Encrypt(username)}");
            request.AddHeader("pass", $"{Data.Encrypt(password)}");
            request.RequestFormat = DataFormat.Json;
            var response = await client.ExecuteGetAsync(request);
            Console.WriteLine("" + response);

            return response.Content;
        }
        protected void getcode_Click(object sender, EventArgs e)
		{
			var brain = new Brain();
			brain.sendemail("", "");

            try
            {

                SmtpClient mySmtpClient = new SmtpClient("my.smtp.exampleserver.net");

                // set smtp-client with basicAuthentication
                mySmtpClient.UseDefaultCredentials = false;
                System.Net.NetworkCredential basicAuthenticationInfo = new
                   System.Net.NetworkCredential("username", "password");
                mySmtpClient.Credentials = basicAuthenticationInfo;

                // add from,to mailaddresses
                MailAddress from = new MailAddress("test@example.com", "TestFromName");
                MailAddress to = new MailAddress("test2@example.com", "TestToName");
                MailMessage myMail = new System.Net.Mail.MailMessage(from, to);

                // add ReplyTo
                MailAddress replyTo = new MailAddress("reply@example.com");
                myMail.ReplyToList.Add(replyTo);

                // set subject and encoding
                myMail.Subject = "Test message";
                myMail.SubjectEncoding = System.Text.Encoding.UTF8;

                // set body-message and encoding
                myMail.Body = "<b>Test Mail</b><br>using <b>HTML</b>.";
                myMail.BodyEncoding = System.Text.Encoding.UTF8;
                // text or html
                myMail.IsBodyHtml = true;

                mySmtpClient.Send(myMail);
            }

            catch (SmtpException ex)
            {
                throw new ApplicationException
                  ("SmtpException has occured: " + ex.Message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
	}
}