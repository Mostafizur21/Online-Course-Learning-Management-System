<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Reg.aspx.cs" Inherits="Pages_Student_Reg" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Control/Reg_Student.ascx" TagPrefix="uc1" TagName="Reg_Student" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
    
         <div>
                <uc1:Header runat="server" ID="Header" />
        </div>

      <div style="margin-top: 50px">
        
          <uc1:Reg_Student runat="server" id="Reg_Student" />

      </div>


      <div style="margin-top: 170px; text-align: center;" >
          <uc1:Footer runat="server" ID="Footer" />
      </div>

    </div>
    </form>
</body>
</html>
