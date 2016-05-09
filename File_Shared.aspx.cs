using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class File_Shared : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Id"]==null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            logInfoButton.Text = "Logout";
        }
        if(Session["isTeacher"]!=null)
        {
            if(Session["isTeacher"].ToString()=="1")
            {
                uploadFile.Visible = true;
                TeacherPanel.Visible = true;
                StudentPanel.Visible = false;
            }
            else
            {
                uploadFile.Visible = false;
                TeacherPanel.Visible = false;
                StudentPanel.Visible = true;
            }
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
            Response.Redirect("Home.aspx");
            Session.Abandon();
        }
        else
            Response.Redirect("Login.aspx");
    }
    protected void uploadFile_Click(object sender, EventArgs e)
    {

    }
    protected void uploadButton_Click(object sender, EventArgs e)
    {
        if (uploadFileControl.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(uploadFileControl.FileName);

                string pathFile = Server.MapPath("~");
                pathFile += "Files" + "\\" + filename;

                FileInfo file = new FileInfo(pathFile);
                if (!Path.GetExtension(filename).Equals(".exe", StringComparison.InvariantCultureIgnoreCase))
                {
                    if (!file.Exists)
                    {
                        try
                        {
                            string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                            SqlConnection conn = new SqlConnection(connectionString);
                            conn.Open();
                            SqlCommand comm = new SqlCommand("Insert into fileContain(sharedBy,Date,fileName,filePath) Values('" + Session["Id"].ToString() + "','" + DateTime.Now + "','" + filename + "','" + pathFile + "')", conn);
                            SqlDataReader reader = comm.ExecuteReader();
                            reader.Close();
                            conn.Close();

                        }
                        catch
                        {

                        }

                        uploadFileControl.SaveAs(pathFile);
                        statusUpload.Text = "Upload status: File uploaded!";
                        statusUpload.ForeColor = System.Drawing.Color.Black;

                    }
                    else
                    {
                        statusUpload.Text = "Already File With same Name!";
                        statusUpload.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    statusUpload.Text = ".EXE file can't be uploaded";
                    statusUpload.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                statusUpload.Text = "Error : " + ex.Message;

            }
        }
        else
        {
            statusUpload.Text = "*Invalid File Path";
            statusUpload.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string firingCommand = e.CommandName;
        string id = e.CommandArgument.ToString();
        if (firingCommand.Equals("DownloadCommand"))
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                
                SqlCommand comm = new SqlCommand("SELECT filename FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                SqlDataReader reader = comm.ExecuteReader(CommandBehavior.CloseConnection);


                reader.Read();

                string pathFile = Server.MapPath("~");
                pathFile += "Files" + "\\" + reader["fileName"];

                FileInfo file = new FileInfo(pathFile);



                Response.ClearContent();
                Response.AddHeader("Content-Disposition", string.Format("attachment; filename = {0}", System.IO.Path.GetFileName(pathFile)));

                Response.TransmitFile(pathFile);
                Response.End();
            }
            catch
            {

            }
        }
        if (firingCommand.Equals("DeleteCommand"))
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                SqlCommand c = new SqlCommand("SELECT filename FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                SqlDataReader reader = c.ExecuteReader(CommandBehavior.CloseConnection);
                reader.Read();
                string pathFile = Server.MapPath("~");
                pathFile += "Files" + "\\" + reader["fileName"];

                conn.Close();
                conn.Open();

                SqlCommand comm = new SqlCommand("DELETE FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                comm.ExecuteNonQuery();

                if (File.Exists(pathFile))
                {
                    File.Delete(pathFile);
                }

                reader.Read();

                

            }
            catch
            {

            }

            Response.Redirect("File_Shared.aspx");
        }
    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        string firingCommand = e.CommandName;
        string id = e.CommandArgument.ToString();
        if (firingCommand.Equals("DownloadCommand"))
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                SqlCommand comm = new SqlCommand("SELECT filename FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                SqlDataReader reader = comm.ExecuteReader(CommandBehavior.CloseConnection);


                reader.Read();

                string pathFile = Server.MapPath("~");
                pathFile += "Files" + "\\" + reader["fileName"];

                FileInfo file = new FileInfo(pathFile);



                Response.ClearContent();
                Response.AddHeader("Content-Disposition", string.Format("attachment; filename = {0}", System.IO.Path.GetFileName(pathFile)));

                Response.TransmitFile(pathFile);
                Response.End();
            }
            catch
            {

            }
        }
        if (firingCommand.Equals("DeleteCommand"))
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                SqlCommand c = new SqlCommand("SELECT filename FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                SqlDataReader reader = c.ExecuteReader(CommandBehavior.CloseConnection);
                reader.Read();
                string pathFile = Server.MapPath("~");
                pathFile += "Files" + "\\" + reader["fileName"];

                conn.Close();
                conn.Open();

                SqlCommand comm = new SqlCommand("DELETE FROM fileContain WHERE Id='" + e.CommandArgument.ToString() + "'", conn);
                comm.ExecuteNonQuery();

                if (File.Exists(pathFile))
                {
                    File.Delete(pathFile);
                }

                reader.Read();



            }
            catch
            {

            }

            Response.Redirect("File_Shared.aspx");
        }
    }
    protected void uploadFile_Click1(object sender, EventArgs e)
    {

    }
}