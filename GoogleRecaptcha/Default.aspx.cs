using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoogleRecaptcha
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(recaptcha.IsValid)
            {
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Login Sucessful";
            }
            else
            {

                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Verification code incorrect";
            }
        }
    }
}