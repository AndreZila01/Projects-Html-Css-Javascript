﻿using Hospital_Site.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital_Site.aspx
{
	public partial class LoginS : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void getcode_Click(object sender, EventArgs e)
		{
			var brain = new Brain();
			brain.sendemail("", "");
		}
	}
}