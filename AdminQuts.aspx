<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminQuts.aspx.cs" Inherits="AdminQuts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="Black" 
                    Text="Email To Owner"></asp:Label>
                <br />
                <table class="style1" 
                    
                    style="font-family: 'bookman Old Style'; font-size: large; font-weight: lighter; font-style: italic; height: 374px;">
                    <tr>
                        <td align="right" style="width: 237px; height: 45px">
                            <asp:Label ID="Label2" runat="server" Text="Modify File" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
&nbsp;&nbsp;
                        </td>
                        <td align="left" style="height: 45px">
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="51px" Width="220px" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>----Select---</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 237px; height: 45px">
                            <asp:Label ID="Label3" runat="server" Text="Owner Name" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
&nbsp;&nbsp;
                        </td>
                        <td align="left" style="height: 45px">
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="51px" Width="219px">
                                <asp:ListItem>---Select---</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 237px">
                            <asp:Label ID="Label4" runat="server" Text="Message" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
&nbsp;&nbsp;
                        </td>
                        <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Height="225px" TextMode="MultiLine" 
                                Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="style1">
                    <tr>
                        <td align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="Medium" Height="45px" onclick="Button5_Click" Text="Submit" 
                                Width="120px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="Medium" Height="45px" Text="Clear" Width="120px" 
                                onclick="Button6_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

