<%@ Page Language="C#" AutoEventWireup="true" CodeFile="File_Shared.aspx.cs" Inherits="File_Shared" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Share</title>
    <script src="Scripts/jquery-2.1.0.intellisense.js"></script>
    <script src="Scripts/jquery-2.1.0.js"></script>
    <script src="Scripts/jquery-2.1.0.min.js"></script>
    <script>
        function func() {
            $("#hideDiv").toggle();
            return false;
        }
    </script>

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
            height: 25px;
            background:#0094ff;
            width:86%;
            margin:0px;
            text-align: center;
            position: relative;
            
            left: 8%;
            top: 0px;
        }
        .auto-style8 {
            height: 25px;
            position: relative;
            top: 0px;
            left: 80%;
            width: 20%;
            background:#0094ff;
        }
        #hideDiv {
            position: relative;
            top: 2%;
            left: 78%;
            width: 220px;
            height: 80px;
            background:#6699FF;
            display:none;
        }
        .auto-style9 {
            position: relative;
            top: -2147483648%;
            left: 8%;
            width: 690px;
            height: 195px;
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
        <div class="auto-style8">
            
            <asp:Button ID="uploadFile" runat="server" BorderStyle="None" Height="25px" OnClientClick="return func();" Text="Upload File" OnClick="uploadFile_Click1" />
            
        </div>
    </div>
     <div id="hideDiv" >
                <asp:FileUpload ID="uploadFileControl" runat="server" Width="200px" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#006699" Text="Upload File" Width="200px" OnClick="uploadButton_Click" />
                <br />
                <asp:Label ID="statusUpload" runat="server" Text=""></asp:Label>
      </div>
        <div class="auto-style1000">
    <asp:Panel ID="TeacherPanel" runat="server">
    <div class="auto-style9">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1"
                     OnRowCommand="GridView1_RowCommand" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                                    <ItemStyle Width="50px" />
                        </asp:TemplateField>
                                <asp:BoundField DataField="sharedBy" HeaderText="Uploader" SortExpression="id">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Left" Width="100px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="fileName" HeaderText="File Name" ReadOnly="True" SortExpression="filename">
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" Width="250px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="Date" HeaderText="Date & Time" ReadOnly="True" SortExpression="date">
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" Width="120px" />
                                </asp:BoundField>
                         <asp:TemplateField>
                                    <ItemStyle Font-Names="Verdana" Font-Size="X-Small" ForeColor="#3366FF" HorizontalAlign="Center" Width="60px" />
                                    <ItemTemplate>
                                        <asp:LinkButton ID="DownloadButton" runat="server" CommandName="DownloadCommand" CommandArgument='<%# Eval("Id") %>'  Text="Download"></asp:LinkButton>
                                    </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField>
                                    <ItemStyle Font-Names="Verdana" Font-Size="X-Small" ForeColor="#3366FF" HorizontalAlign="Center" Width="60px" />
                                    <ItemTemplate>
                                        <asp:LinkButton ID="DeleteButton" runat="server" CommandName="DeleteCommand" CommandArgument='<%# Eval("Id") %>'  Text="Delete"></asp:LinkButton>
                                    </ItemTemplate>
                          </asp:TemplateField>
                            
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" SelectCommand="SELECT [Id], [sharedBy], [Date], [fileName] FROM [fileContain] ORDER BY [Date] DESC, [Id]"></asp:SqlDataSource>
    </div>
    </asp:Panel>
    <asp:Panel ID="StudentPanel" runat="server">
    <div class="auto-style9">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2"
                     OnRowCommand="GridView1_RowCommand1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                                    <ItemStyle Width="50px" />
                        </asp:TemplateField>
                                <asp:BoundField DataField="sharedBy" HeaderText="Uploader" SortExpression="id">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Left" Width="100px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="fileName" HeaderText="File Name" ReadOnly="True" SortExpression="filename">
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" Width="250px" />
                                </asp:BoundField>

                                <asp:BoundField DataField="Date" HeaderText="Date & Time" ReadOnly="True" SortExpression="date">
                                    <ItemStyle Font-Names="Verdana" Font-Size="Small" HorizontalAlign="Center" Width="120px" />
                                </asp:BoundField>
                         <asp:TemplateField>
                                    <ItemStyle Font-Names="Verdana" Font-Size="X-Small" ForeColor="#3366FF" HorizontalAlign="Center" Width="60px" />
                                    <ItemTemplate>
                                        <asp:LinkButton ID="DownloadButton" runat="server" CommandName="DownloadCommand" CommandArgument='<%# Eval("Id") %>'  Text="Download"></asp:LinkButton>
                                    </ItemTemplate>
                          </asp:TemplateField>
                          
                            
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" SelectCommand="SELECT [Id], [sharedBy], [Date], [fileName] FROM [fileContain] ORDER BY [Date] DESC, [Id]"></asp:SqlDataSource>
    </div>
        </div>
    </asp:Panel>
    </form>
    </body>
</html>
