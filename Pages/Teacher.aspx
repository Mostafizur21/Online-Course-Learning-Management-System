<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Pages_Teacher" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999999/xhtml">
<head runat="server">
    <title>Teacher User</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="main">

      <uc1:Header runat="server" ID="Header" />

      <div style="height: 30px; width: 133px; margin-left: 736px; margin-top: 20px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Width="100px" style="height: 26px" />
        </div>

      <div style="margin-top: 550px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>
      
    
  </div>
    </form>
</body>
</html>
