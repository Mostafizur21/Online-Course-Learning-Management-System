using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void registerButton_Click1(object sender, EventArgs e)
    {
        if (registerAs.SelectedIndex == 0)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand comm = new SqlCommand("Insert into Teachers_table(UserName,Password,Institution,Email,Age,Gender,CourseId) Values('" + UserName.Text + "','" + Password.Text + "','" + Institution.Text + "','" + Email.Text + "','" + Age.Text + "','" + genderButtonList.SelectedIndex + "','" + Course.Text +  "')", conn);
                SqlDataReader reader = comm.ExecuteReader();
                reader.Close();
                conn.Close();

                message.Text = "Successfully Registered!";
                message.ForeColor = System.Drawing.Color.Green;
            }
            catch
            {
                message.Text = "User Name is available.Try another!";
                message.ForeColor = System.Drawing.Color.Red;
            }
        }
        else if(registerAs.SelectedIndex==1)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand comm = new SqlCommand("Insert into Students_Table(UserName,Password,Institution,Email,Age,Gender,CourseId) Values('" + UserName.Text + "','" + Password.Text + "','" + Institution.Text + "','" + Email.Text + "','" + Age.Text + "','" + genderButtonList.SelectedIndex + "','" + Course.Text + "')", conn);
                SqlDataReader reader = comm.ExecuteReader();
                reader.Close();
                conn.Close();

                message.Text = "Successfully Registered!";
                message.ForeColor = System.Drawing.Color.Green;
            }
            catch
            {
                message.Text = "User Name is available.Try another!";
                message.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
    protected void genderButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void registerAs_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}