<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ragistration</title>
    <style type="text/css">
        .auto-style99 {
        width: 100%;
    }
    .auto-style110 {
            width: 271px;
            text-align: center;
        }
    .auto-style44 {
        text-align: left;
        width: 253px;
    }
    #Reset1 {
        width: 68px;
    }
    .auto-style55 {
        width: 253px;
    }
    .auto-style66 {
        text-align: center;
        width: 271px;
        height: 26px;
    }
    .auto-style77{
        text-align: left;
        width: 253px;
        height: 26px;
    }
    .auto-style88 {
        height: 26px;
    }
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
            height: 319px;
        }
        .auto-style8 {
            height: 291px;
            position: relative;
            top: 2px;
            left: 184px;
            width: 100%;
            margin-top: 8px;
        }
        .auto-style111 {}
        .auto-style112 {
            position: relative;
            top: 0px;
            left: 27%;
            width: 549px;
        }
        .auto-style113 {
            width: 108px;
        }
        .auto-style114 {
            margin-left: 25px;
        }
        .auto-style115 {
            width: 273px;
        }
        .auto-style116 {}
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
                            <a href="Article.aspx" style="text-decoration:none;"><asp:Label ID="articleLink" runat="server">Article</asp:Label></a>
                        </td>
                        <td>
                            <a href="Notice.aspx" style="text-decoration:none;"><asp:Label ID="noticeLink" runat="server">Notice</asp:Label></a>
                        </td>
                        <td>
                           <a href="Contacts.aspx" style="text-decoration:none;"> <asp:Label ID="contactLink" runat="server">Contact</asp:Label></a>
                        </td>
                        <td>
                            <a href="Login.aspx" style="text-decoration:none;"><asp:Label ID="logLink" runat="server">Login</asp:Label></a>
                        </td>
                    </tr>
                    </table>

            </div>
            
        </div>
        <div class="auto-style1000"
    <h2 style="text-align:center;">User Registration Form</h2>
        <div class="auto-style112">
            <table class="auto-style99">
                <tr>
                    <td class="auto-style113">Register As:</td>
                    <td class="auto-style115">
                        <asp:RadioButtonList ID="registerAs" runat="server" CssClass="auto-style114" RepeatDirection="Horizontal" Width="249px" OnSelectedIndexChanged="registerAs_SelectedIndexChanged">
                            <asp:ListItem>Teacher</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="registerAs" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">This not Empty</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
    
    <div class="auto-style7">
        <div class="auto-style8">
             <table class="auto-style99">
                <tr>
                    <td class="auto-style110">User Name:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="UserName" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User name is required" ForeColor="Red">User name is required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">E-mail:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="Email" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Email  is required" ForeColor="Red" Display="Dynamic">Email  is required</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">Institution:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="Institution" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Institution" ErrorMessage="Institution is required" ForeColor="Red">Institution is required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">Age:</td>
                    <td class="auto-style77">
                        <asp:TextBox ID="Age" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="auto-style116" TextMode="Number" Width="270px"></asp:TextBox>
                    </td>
                    <td class="auto-style88">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Age"  ForeColor="Red" Display="Dynamic">Age is required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">Gender:</td>
                    <td class="auto-style44">
                        <asp:RadioButtonList ID="genderButtonList" runat="server" CssClass="auto-style111" RepeatDirection="Horizontal" Width="270px" OnSelectedIndexChanged="genderButtonList_SelectedIndexChanged">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="genderButtonList"  ForeColor="Red">Gender is required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style66">Country:</td>
                    <td class="auto-style77">
                        <asp:DropDownList ID="DropDownListCountry" runat="server" Width="270px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>Bangladesh</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>America</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>England</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>UAE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style88">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Country is required" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">Password:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password" Text="Password Required " ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">Confirm Password:</td>
                    <td class="auto-style55">
                        <asp:TextBox ID="ConfirmPassword" runat="server" Width="270px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="Red" Display="Dynamic">Confirm Password is required</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Both Password must be same" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">Course:</td>
                    <td class="auto-style55">
                        <asp:TextBox ID="Course" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Course" ErrorMessage="Course Id is Required" ForeColor="Red">Course Id is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">
                        <asp:Label ID="message" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style55">
                        <asp:Button ID="registerButton" runat="server" OnClick="registerButton_Click1" Text="Register" Width="82px" />
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
    </div>
        </form>
</body>
</html>
