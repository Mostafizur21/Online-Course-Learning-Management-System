using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Response.Cookies["Login"]["Name"]!=null)
        {
            Session["Id"] = Response.Cookies["Login"]["Name"];
           
            
        }
        else
        {
            logInfoButton.Text = "Login";
        }
        if(Session["Id"]!=null)
        {
            welcomeLabel.Text = "Hi," + Session["Id"].ToString();
            logInfoButton.Text = "Logout";
        }
    }
   
    
    protected void logInfoButton_Click1(object sender, EventArgs e)
    {
        if (logInfoButton.Text == "Logout")
        {

            HttpCookie myCookie = new HttpCookie("Login");
            myCookie.Expires = DateTime.Now.AddDays(-10d);
            Response.Cookies.Add(myCookie);
            logInfoButton.Text = "Login";
            Session.Abandon();
            welcomeLabel.Text = "";
            Response.Redirect("Home.aspx");
        }
        else
            Response.Redirect("Login.aspx");
    }
}