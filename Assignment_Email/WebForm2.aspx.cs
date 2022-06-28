using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using MySql.Data.MySqlClient;

namespace Assignment_Email
{

    public partial class WebForm2 : System.Web.UI.Page
    {
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

        protected void btn_registerUser_Click(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            try
            {
                myConnection();
                cmd = new MySqlCommand("Select * from user_info where name= @name2", con);
                cmd.Parameters.AddWithValue("@name2", txt_userName.Text);
                dr = cmd.ExecuteReader();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (!dr.Read())
            {
                Random rand = new Random();
                string userPassword = rand.Next(999999).ToString();
                Msg.From = new MailAddress("studentlally791@gmail.com");

                Msg.To.Add(txt_emailId.Text);


                Msg.Subject = "Your Password";

                Msg.Body = userPassword;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("studentlally791@gmail.com", "lally12345");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                Msg = null;
                lblMessage.Visible = true;
                lblMessage.Text = "Your Password on Youe Email Has Been Succesfully Sent !";
                try
                {
                    myConnection();
                    cmd = new MySqlCommand("Insert into user_info values(@name,@mobileNo,@dob,@emailId,@password)", con);
                    cmd.Parameters.AddWithValue("@name", txt_userName.Text);
                    cmd.Parameters.AddWithValue("@mobileNo", txt_mobileno.Text);
                    cmd.Parameters.AddWithValue("@dob", txt_dob.Text);
                    cmd.Parameters.AddWithValue("@emailId", txt_emailId.Text);
                    cmd.Parameters.AddWithValue("@password", userPassword);
                    cmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "User Already Exists!!";
            }
        }
    }
}