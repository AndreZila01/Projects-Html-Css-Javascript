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
        public async static Task<string> checkUsers(string username, string password)
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
            new Brain().sendemail("", "");

            return response.Content;
        }

        [WebMethod]
        public async static Task<string> newcode(string email)
        {
            new Brain().sendemail("", email);

            return "";
        }
        protected void getcode_Click(object sender, EventArgs e)
		{
            new Brain().sendemail("", "");
        }
	}
}