using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Assignment_Email
{

    public partial class WebForm4 : System.Web.UI.Page
    {

        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader dr;
       static string password;
       

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
            if (this.IsPostBack)
            {
                //  txt_password.Attributes["value"] = txt_password.Text;
                txt_password.Attributes.Add("value", txt_password.Text);
            }

        }

        protected void btn_signIn_Click(object sender, EventArgs e)
        {
            
            password = txt_password.Text;
            try
            {
                myConnection();
                cmd = new MySqlCommand("Select * from user_info where name= @name2 AND password= @password", con);
                cmd.Parameters.AddWithValue("@name2", txt_userName.Text);
                cmd.Parameters.AddWithValue("@password", txt_password.Text);
                dr = cmd.ExecuteReader();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if(dr.Read())
            {
              
                Response.Redirect("~/WebForm3.aspx?name="+txt_userName.Text);
           

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Wrong Credentials";
            }
            
        }

        protected void check_showPassword_CheckedChanged(object sender, EventArgs e)
        {
            if(check_showPassword.Checked)
                txt_password.TextMode= TextBoxMode.SingleLine ;
            if (!check_showPassword.Checked)
            {
               
                txt_password.TextMode = TextBoxMode.Password;
                
            }


        }
    }
}