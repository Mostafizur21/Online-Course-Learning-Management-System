using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LoginAs_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if(LoginAs.SelectedIndex==1)
        {
            studentLoginPanel.Visible = true;
            teacherLoginPanel.Visible = false;

        }
        else if(LoginAs.SelectedIndex == 0)
        {
            studentLoginPanel.Visible = false;
            teacherLoginPanel.Visible = true;
        }
    }
    protected void loginStudent_Click(object sender, EventArgs e)
    {
        try
        {

            string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand check = new SqlCommand("Select Password From Students_Table where UserName='" + userNameStudent.Text + "'", conn);
            SqlDataReader reader = check.ExecuteReader();

            reader.Read();
            string pass = reader["Password"].ToString();


            reader.Close();

            if (pass != passwordBoxStudent.Text)
            {
                loginMessageStudent.Text = "Invalid Username or Password";
                
                loginMessageStudent.Visible = true;

            }

            else
            {
                SqlCommand chec = new SqlCommand("Select UserName From Students_Table where UserName='" + userNameStudent.Text + "'", conn);
                SqlDataReader reade = chec.ExecuteReader();

                reade.Read();


                string name = reade["UserName"].ToString();
                conn.Close();
                reade.Close();



                //session Cookie
                HttpCookie cookie = new HttpCookie("Login");
                Session["Id"] = name;
                Session["isTeacher"] = "0";
                if (rememberMeBox.Checked == true)
                {

                    cookie["Name"] = userNameStudent.Text;
                    cookie["isTeacher"] = "0";
                    cookie.Expires = DateTime.Now.AddDays(7d);
                    Response.Cookies.Add(cookie);
                }
                //this.Master.registerLogout = "Log out";
                Response.RedirectPermanent("Home.aspx");
            }
        }
        catch
        {
            loginMessageStudent.Text = "Invalid Username or Password";
            loginMessageStudent.Visible = true;
        }
    }
    protected void loginTeacher_Click(object sender, EventArgs e)
    {
        try
        {

            string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand check = new SqlCommand("Select Password From Teachers_table where UserName='" + userNameBoxteacher.Text + "'", conn);
            SqlDataReader reader = check.ExecuteReader();

            reader.Read();
            string pass = reader["Password"].ToString();


            reader.Close();

            if (pass != passwordBoxteacher.Text)
            {
                loginMessageTeacher.Text = "Invalid Username or Password";

                loginMessageTeacher.Visible = true;
            }

            else
            {
                SqlCommand chec = new SqlCommand("Select * From Teachers_table where UserName='" + userNameBoxteacher.Text + "'", conn);
                SqlDataReader reade = chec.ExecuteReader();

                reade.Read();


                string name = reade["UserName"].ToString();
                conn.Close();
                reade.Close();



                //session Cookie
                HttpCookie cookie = new HttpCookie("Login");
                Session["Id"] = name;
                Session["isTeacher"] = "1";
                if (rememberMeBox.Checked == true)
                {

                    cookie["Name"] = userNameBoxteacher.Text;
                    
                    cookie["isTeacher"] = "1";
                    cookie.Expires = DateTime.Now.AddDays(7d);
                    Response.Cookies.Add(cookie);
                }
                //this.Master.registerLogout = "Log out";
                Response.Redirect("Home.aspx");
            }
        }
        catch
        {
            loginMessageTeacher.Text = "Invalid Username or Password";
            loginMessageTeacher.Visible = true;
        }
    }
}