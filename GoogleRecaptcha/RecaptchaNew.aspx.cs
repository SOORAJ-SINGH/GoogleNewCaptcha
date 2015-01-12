using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Script.Serialization;
using System.Net;

namespace GoogleRecaptcha
{
    public partial class RecaptchaNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //validate Recaptcha
            if (Validate())
            {



                lblMsg.Text = "Valid Recaptcha";
                lblMsg.ForeColor = System.Drawing.Color.Green;


            }

            else
            {

                lblMsg.Text = "Not Valid Recaptcha";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        public bool Validate()
        {

            //Getting Response String Appned to Post Method
            string Response = Request["g-recaptcha-response"];

            bool Valid = false;
            //Request to Google Server
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(" https://www.google.com/recaptcha/api/siteverify?secret=6LeDTAATAAAAAD8e7bH0ygZhyVPINSwO_8q04_K7&response=" + Response);

            try
            {
                //Google recaptcha Responce 
                using (WebResponse wResponse = req.GetResponse())
                {

                    using (StreamReader readStream = new StreamReader(wResponse.GetResponseStream()))
                    {
                        string jsonResponse = readStream.ReadToEnd();

                        JavaScriptSerializer js = new JavaScriptSerializer();
                        MyObject data = js.Deserialize<MyObject>(jsonResponse);// Deserialize Json 

                        Valid = Convert.ToBoolean(data.success);


                    }
                }

                return Valid;

            }
            catch (WebException ex)
            {
                throw ex;
            }


        }




    }
}

public class MyObject
{
    public string success { get; set; }


}