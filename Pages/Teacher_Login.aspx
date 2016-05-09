<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_Login.aspx.cs" Inherits="Pages_Teacher_Login" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Login</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div>
                <uc1:Header runat="server" ID="Header" />
       </div>
    <div>
    <div style="height: 220px; margin-left: 150px; margin-right: 150px; margin-top: 50px;">
            <span class="auto-style3"><strong>Teacher Login</strong></span>
            <br />
            <br />
            Email:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 26px"></asp:TextBox>
            <br />
            Password:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <span style="margin-left:100px">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Keep me logged in" />
            </span>
            <br />

            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="margin-left: 100px" Text="Login" Width="84px" />

            
            <br />
            <span style="font-family:'Arial Unicode MS';margin-left:100px;margin-top:50px">
                <a href="Registration.aspx">Sign Up</a>
            </span>
            
        </div>
    </div>
      
      <div style="margin-top: 270px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>
      
    
  </div>
    </form>
</body>
</html>
