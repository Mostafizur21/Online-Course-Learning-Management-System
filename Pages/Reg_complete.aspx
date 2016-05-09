<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg_complete.aspx.cs" Inherits="Pages_Reg_complete" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Complete</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">

      <uc1:Header runat="server" ID="Header" />

        
        <div style="height: 350px; margin-top: 39px; font-style: italic; color: #FF0000;">
    
            Registration complete

        </div>
      
      <div style="margin-top: 550px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>
      
    
  </div>
    </form>
</body>
</html>
