using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Control_Reg_Student : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString()))
        {
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO [Students_Table] ([UserName],[Password],[Institution],[Email],[Age],[Gender],[Course Id]) VALUES('" + UserName.Text + "','" + Password.Text + "','" + Institution.Text + "','" + Email.Text + "','" + Age.Text + "','" + Gender.Text + "','" + Course.Text + "') ", cn);

            SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);

            Response.Redirect("Reg_complete.aspx");

            cn.Close();
        }
    }
}