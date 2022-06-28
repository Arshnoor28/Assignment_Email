using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Email
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkBtn_signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }

        protected void linkBtn_signIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm4.aspx");
        }

        protected void linkBtn_forgetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm5.aspx");
        }

        
    }
}