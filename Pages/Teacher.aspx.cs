using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cooki = Request.Cookies["Preferences"];
        if (cooki != null)
        {
            Session["na"] = cooki["name"];
        }

        if (Session["na"] != null)
        {

        }
        else
        {
            Response.Redirect("Teacher_Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preferences"];
        cookie = new HttpCookie("Preferences");
        cookie.Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(cookie);
        Session.Abandon();
        Response.Redirect("Teacher_Login.aspx");
    }
}