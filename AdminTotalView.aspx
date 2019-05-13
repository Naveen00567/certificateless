<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminTotalView.aspx.cs" Inherits="AdminTotalView" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="Black" 
                    Text="File Download(Full View)"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="5px" Width="766px"></asp:TextBox>
                <br />
                <br />
                <table class="style1" align="right" 
                    style="font-family: 'bookman Old Style'; font-size: medium; font-weight: lighter; font-style: italic">
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label2" runat="server" Text="File Id:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label4" runat="server" Text="File Name:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label6" runat="server" Text="File Subject:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label8" runat="server" Text="File Type:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label10" runat="server" Text="File Size:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label12" runat="server" Text="File Owner:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr align="left">
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label14" runat="server" Text="Verify:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label15" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label16" runat="server" Text="Key Request:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 344px" align="right">
                            <asp:Label ID="Label18" runat="server" Text="Modify Status:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="height: 35px" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label19" runat="server"></asp:Label>
                        </td>
                        
                    </tr>
                    <table class="style1" align="right" 
                    style="font-family: 'bookman Old Style'; font-size: medium; font-weight: lighter; font-style: italic">
                    </table>
                <tr>
                    <td align="center">
                        <br />
                        <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Names="Bookman Old Style" Font-Size="Large" Height="51px" Text="Download" 
                            Width="130px" onclick="Button5_Click" />
                        <br />
                    </td>
        </tr>
                </table>
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
            </td>
        </tr>
    </table>
</asp:Content>

