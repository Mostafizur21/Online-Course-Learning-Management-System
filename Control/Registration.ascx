<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Registration.ascx.cs" Inherits="Control_Registration" %>
<style type="text/css">
    .auto-style99 {
        width: 100%;
    }
    .auto-style100 {
        text-align: right;
        width: 271px;
    }
    .auto-style110 {
        width: 271px;
        text-align: right;
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
        text-align: right;
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
</style>

<table class="auto-style99">
    <tr>
        <td class="auto-style100">User Name:</td>
        <td class="auto-style44">
            <asp:TextBox ID="UserName" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">E-mail:</td>
        <td class="auto-style44">
            <asp:TextBox ID="Email" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Email  is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">Institution:</td>
        <td class="auto-style44">
            <asp:TextBox ID="Institution" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Institution" ErrorMessage="Institution is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">Age:</td>
        <td class="auto-style44">
            <asp:TextBox ID="Age" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Age" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">Gender:</td>
        <td class="auto-style44">
            <asp:TextBox ID="Gender" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Gender" ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style66">Country:</td>
        <td class="auto-style7">
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
        <td class="auto-style100">Password:</td>
        <td class="auto-style44">
            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style100">Confirm Password:</td>
        <td class="auto-style55">
            <asp:TextBox ID="ConfirmPassword" runat="server" Width="270px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style110">Course:</td>
        <td class="auto-style55">
            <asp:TextBox ID="Course" runat="server" Width="270px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Course" ErrorMessage="Course Id is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style110">&nbsp;</td>
        <td class="auto-style55">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" Width="82px" />
            <input id="Reset1" type="reset" value="reset" /></td>
        <td>&nbsp;</td>
    </tr>
</table>

