<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="../Style/StyleSheet.css" rel="stylesheet" />
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
            height: 412px;
            position: relative;
            top: 0px;
            left: 7px;
            width: 774px;
        }
        .auto-style8 {
            height: 348px;
            position: relative;
            top: 18px;
            left: 135px;
            width: 523px;
        }
        .auto-style99 {}
        .auto-style11 {}
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            width: 185px;
        }
        .auto-style15 {
            width: 204px;
        }
        .auto-style16 {
            width: 204px;
            height: 25px;
            text-align: left;
        }
        .auto-style17 {
            width: 185px;
            height: 25px;
            text-align: left;
        }
        .auto-style18 {
            height: 25px;
        }
        .auto-style19 {}
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
        <div style="margin:0px;" >
            <div >
            
                <div class="auto-style4">
                
                    <h2 class="auto-style5">Online Course Learning Management System</h2>
                        <table class="auto-style6">
                        <tr>
                            <td>
                               <a href="Home.aspx" style="text-decoration:none;"> <asp:Label ID="homeLabel" runat="server" >Home</asp:Label></a>
                            </td>
                            <td>
                                <a href="File_Shared.aspx" style="text-decoration:none;"><asp:Label ID="articleLabel" runat="server">File Shared</asp:Label></a>
                            </td>
                            <td>
                                <a href="Notice.aspx" style="text-decoration:none;"><asp:Label ID="noticeLable" runat="server">Notice</asp:Label></a>
                            </td>
                            <td>
                               <a href="Contacts.aspx" style="text-decoration:none;"> <asp:Label ID="contactLabel" runat="server">Contact</asp:Label></a>
                            </td>
                            <td>
                                <a href="Login.aspx" style="text-decoration:none;"><asp:Label ID="loginLabel" runat="server">Login</asp:Label></a>
                            </td>
                        </tr>
                        </table>

                </div>
            
            </div>
            
         </div>
     <div class="auto-style1000"
        <div class="auto-style7">
            <div class="auto-style8">
                <asp:RadioButtonList ID="LoginAs" runat="server" CssClass="auto-style99" OnSelectedIndexChanged="LoginAs_SelectedIndexChanged" RepeatDirection="Horizontal" Width="519px" AutoPostBack="True">
                    <asp:ListItem>Teacher Login</asp:ListItem>
                    <asp:ListItem>Student Login</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Panel ID="studentLoginPanel" runat="server" CssClass="auto-style11" Height="128px" Visible="false">
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style15">User Name</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="userNameStudent" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Password</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="passwordBoxStudent" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:Label ID="loginMessageStudent" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:CheckBox ID="rememberMeBox" runat="server" CssClass="auto-style13" Text="Remember me" />
                            </td>
                            <td class="auto-style18"></td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="loginStudent" runat="server" CssClass="auto-style19" Text="Login As Student" Width="150px" OnClick="loginStudent_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                    <br />
                    <br />

                </asp:Panel>
                <asp:Panel ID="teacherLoginPanel" runat="server" CssClass="auto-style11" Height="128px" Visible="false" >
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style15">User Name</td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="userNameBoxteacher" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style15">Password</td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="passwordBoxteacher" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style16">
                                    <asp:Label ID="loginMessageTeacher" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                                <td class="auto-style17">
                                    <asp:CheckBox ID="rememberMeBoxteacher" runat="server" CssClass="auto-style13" Text="Remember me" />
                                </td>
                                <td class="auto-style18"></td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="loginTeacher" runat="server" CssClass="auto-style19" Text="Login As Teacher" Width="150px" OnClick="loginTeacher_Click" />
                        <br />
                        
                        <br />
                        
                    </asp:Panel>
                <p></p>
                
                <a href ="Register.aspx" style="text-decoration:none;" >Sign Up Here
            </div>
        </div>
         </div>
    </form>
</body>
</html>
