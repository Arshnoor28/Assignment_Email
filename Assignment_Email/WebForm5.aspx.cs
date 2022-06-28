using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Net;
using System.Net.Mail;

namespace Assignment_Email
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string mail;
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;
        MailMessage Msg = new MailMessage();

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

        }

        protected void btn_forgetPassword_Click(object sender, EventArgs e)
        {
            // set label visible value = false
            lbl_message.Visible = false;

            //generate new password
            Random rand = new Random();
            string userPassword = rand.Next(999999).ToString();

            //mail the new password to the user
            Msg.From = new MailAddress("studentlally791@gmail.com");
            //get emailId of user from database
            try
            {
                myConnection();
                cmd = new MySqlCommand("Select * from user_info where name= @name2", con);
                cmd.Parameters.AddWithValue("@name2", txt_username.Text);
                dr = cmd.ExecuteReader();
                dr.Read();
                mail = dr["emailId"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            if (mail != null)
            {
                Msg.To.Add(mail);
                Msg.Subject = "Your New Password";
                Msg.Body = userPassword;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("studentlally791@gmail.com", "lally12345");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                Msg = null;
               
            }

            // save new password in database

            try
            {
                myConnection();

                cmd = new MySqlCommand("update user_info SET password = @newPassword WHERE name = @username", con);
                cmd.Parameters.AddWithValue("@newPassword", userPassword);
                cmd.Parameters.AddWithValue("@username", txt_username.Text);

                cmd.ExecuteNonQuery();
                myConnection();

                // lblmessage
                lbl_message.Visible = true;
                lbl_message.Text ="Your new password has been sent to your email address!!";


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
















        }
    }
    
}