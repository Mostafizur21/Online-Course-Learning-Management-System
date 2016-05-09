using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class Pages_Student_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cooki = Request.Cookies["Preferences"];
        if (cooki != null)
        {
            Session["na"] = cooki["name"];
            Response.Redirect("Student.aspx");
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
        SqlConnection conn = new SqlConnection(con);
        conn.Open();
        SqlCommand check = new SqlCommand("Select * From [Students_Table]", conn);
        SqlDataReader r = check.ExecuteReader();

        while (r.Read())
        {
            string n = Convert.ToString(r["Email"]);
            string m = Convert.ToString(TextBox1.Text);

            string p = Convert.ToString(r["Password"]);
            string q = Convert.ToString(TextBox2.Text);
            if ((p == q) && (m == n))
            {
                HttpCookie cookie = Request.Cookies["Preferences"];
                if (CheckBox1.Checked)
                {
                    cookie = new HttpCookie("Preferences");
                    cookie["name"] = TextBox1.Text;
                    cookie["pw"] = TextBox2.Text;
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);

                    Session["na"] = cookie["name"];
                    Session["pss"] = cookie["pw"];

                }
                else
                {
                    Session["na"] = TextBox1.Text;
                    Session["pss"] = TextBox2.Text;
                }


                Response.Redirect("Student.aspx");
            }

        }
    }
}