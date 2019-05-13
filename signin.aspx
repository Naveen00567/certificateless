<%@ Page Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 100%;
    }
    .style7
    {
        width: 378px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
    <tr>
        <td align="center" 
            style="font-size: x-large; font-weight: bold; color: #000000">
            <br />
            Sign In<br />
            <br />
            <table class="style5">
                <tr>
                    <td align="center">
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                            onclick="Button1_Click" Text="Login" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                            onclick="Button2_Click" Text="Clear" />
                        <br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

