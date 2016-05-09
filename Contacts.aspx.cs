using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            logInfoButton.Text = "Logout";
        }
        
    }

    public string getWhileLoopDataofTeacher()
    {
        string members = "";
        string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        SqlCommand comm = new SqlCommand("SELECT * from Teachers_table", conn);

        SqlDataReader reader = comm.ExecuteReader();
        int cnt = 0;
        while (reader.Read())
        {
            cnt++;
            string name = reader.GetString(0);
            string institution = reader.GetString(2);
            string email = reader.GetString(3);
            string course = reader.GetString(6);


            members += "<tr><td>" + cnt + "</td><td>" + name + "</td><td>" + institution + "</td><td>" + course + "</td><td>" + email + "</td></tr>";
        }
        reader.Close();
        conn.Close();
        return members;
    }

    public string getWhileLoopDataofStudents()
    {
        string members = "";
        string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        SqlCommand comm = new SqlCommand("SELECT * from Students_Table", conn);

        SqlDataReader reader = comm.ExecuteReader();
        int cnt = 0;
        while (reader.Read())
        {
            cnt++;
            string name = reader.GetString(0);
            string institution = reader.GetString(2);
            string email = reader.GetString(3);
            string course = reader.GetString(6);


            members += "<tr><td>" + cnt + "</td><td>" + name + "</td><td>" + institution + "</td><td>" + course + "</td><td>" + email + "</td></tr>";
        }
        reader.Close();
        conn.Close();
        return members;
    }
    
    protected void logInfoButton_Click(object sender, EventArgs e)
    {
        if (logInfoButton.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Cookies["Login"].Expires = DateTime.Now.AddDays(-1);
            Session.Abandon();
            logInfoButton.Text = "Login";
            Response.Redirect("Home.aspx");

        }
    }
    protected void logInfoButton_Click1(object sender, EventArgs e)
    {
        if (logInfoButton.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Cookies["Login"].Expires = DateTime.Now.AddDays(-1);
            Session.Abandon();
            logInfoButton.Text = "Login";
            Response.Redirect("Home.aspx");

        }
    }
}