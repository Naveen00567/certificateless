<%@ Page Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="OwnerRegistration.aspx.cs" Inherits="OwnerRegistration" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <style type="text/css">
        .style8
        {
            width: 100%;
            height: 382px;
        }
        .style12
        {
            height: 50px;
            width: 333px;
        }
        .style13
        {
            height: 50px;
        }
    </style>
    <table class="style8">
        <tr>
            <td align="center" colspan="2" 
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; border-style: solid; border-width: medium">
                Owner Registration</td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>
            </td>
            <td class="style13">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                Full Name</td>
            <td class="style13">
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style13">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="161px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style13">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="24px" 
                    Width="189px" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                Date of Registration</td>
            <td class="style13">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                Contact No.</td>
            <td class="style13">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label6" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td class="style13">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Height="35px" Text="Submit" Width="85px" onclick="Button5_Click" />
            </td>
            <td class="style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Height="35px" Text="Cancel" Width="95px" onclick="Button6_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

