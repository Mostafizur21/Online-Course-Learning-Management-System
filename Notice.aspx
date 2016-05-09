<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Notice" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
    
    <style type="text/css">
        .auto-style4 {
            height: 90px;
            
            background:#0094ff;
            width:86%;
            margin:0px;
            text-align: center;
            position: relative;
            
            left: 8%;
            top: 0px;
        }
        .auto-style5 {
            color: #990000;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            
            width: 689px;
            height: 23px;

            background:#0094ff;
            width:86%;
            margin:0px;
            
            position: relative;
            
            left: 8%;
            top: 0px;
            text-align: right;
        }
        .auto-style1000
        {
            margin:0px;
            text-align: center;
            position: relative;
            
            left: 8%;
            
            height: 649px;
            width: 86%;
            

            background-color:burlywood;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:0px;">
            
            <div class="auto-style4">
                
                <h2 class="auto-style5">Online Course Learning Management System</h2>
                    <table class="auto-style6">
                    <tr>
                        <td>
                           <a href="Home.aspx" style="text-decoration:none;"> <asp:Label ID="homeLink" runat="server" >Home</asp:Label></a>
                        </td>
                        <td>
                            <a href="File_Shared.aspx" style="text-decoration:none;"><asp:Label ID="articleLink" runat="server">File Shared</asp:Label></a>
                        </td>
                        <td>
                            <a href="Notice.aspx" style="text-decoration:none;"><asp:Label ID="noticeLink" runat="server">Notice</asp:Label></a>
                        </td>
                        <td>
                           <a href="Contacts.aspx" style="text-decoration:none;"> <asp:Label ID="contactLink" runat="server">Contact</asp:Label></a>
                        </td>
                        <td>
                            
                            <asp:Button ID="logInfoButton" runat="server" BackColor="#0094FF" BorderStyle="None" OnClick="logInfoButton_Click1" />
                            
                         </td>
                    </tr>
                    </table>

            </div>
            
        </div>
    <div class="auto-style7">
        <asp:Label ID="welcomeLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
    <div class ="auto-style1000">
        <br />
        <br />
        This page is about some notice.

        
        <br />
        <br />

        
    </div>
    </body>
</html>

