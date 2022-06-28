using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace Assignment_Email
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;


        public void myConnection()
        {
            try
            {
                con = new MySqlConnection("Data Source= localhost; Database= user; User ID = root; Password = Arsh#2806 ");
                con.Open();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                lbl_userName.Text = Request.QueryString["name"];
        }



        protected void link_changePassword_Click(object sender, EventArgs e)
        {
            panel_passwordChange.Visible = true;
        }
        protected void btn_changePassword_Click(object sender, EventArgs e)
        {
            try
            {
                myConnection();

                cmd = new MySqlCommand("update user_info SET password = @newPassword WHERE name = @username", con);
                cmd.Parameters.AddWithValue("@newPassword", txt_newPassword.Text);
                cmd.Parameters.AddWithValue("@username", txt_username.Text);

                cmd.ExecuteNonQuery();
                lbl_message.Text = "Password Changed";
                lbl_message.Visible = true;

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            panel_passwordChange.Visible=false; 
        }
        protected void lbl_signOut_Click(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.ClearHeaders();
            Response.AddHeader("Cache-Control","no-cache ,no-store, max-age=0 , must-revalidate");
            Response.AddHeader("Pragma","no-cache");
            Response.Write("Good Luck");
          //Response.Redirect("~/WebForm1.aspx");

        }
    }
}