<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Pages_Contact_us" %>


<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">

      <uc1:Header runat="server" ID="Header" />

      
      <div style="margin-top: 550px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>
      
    
  </div>
    </form>
</body>
</html>
