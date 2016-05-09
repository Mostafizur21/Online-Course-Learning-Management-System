<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Pages_Registration" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Control/Registration.ascx" TagPrefix="uc1" TagName="Registration" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Registraion</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">

        <div>
                <uc1:Header runat="server" ID="Header" />
        </div>

      <div style="margin-top: 50px">
          <uc1:Registration runat="server" ID="Registration" />

      </div>


      <div style="margin-top: 170px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>
      
    
  </div>
    </form>
</body>
</html>
