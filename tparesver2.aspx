<%@ Page Language="C#" MasterPageFile="~/TpaMaster.master" AutoEventWireup="true" CodeFile="tparesver2.aspx.cs" Inherits="tparesver2" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table style="width: 100%; height: 612px">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" 
                    
                    style="position: absolute; top: 605px; left: 203px; height: 221px; width: 528px;">
                    <asp:Label ID="Label1" runat="server" Font-Names="Bookman Old Style" 
                        Font-Size="20" style="position: absolute; top: 15px; left: 170px; right: 170px;" 
                        Text="File Download"></asp:Label>
                    <asp:Label ID="Label2" runat="server" 
                        style="position: absolute; top: 68px; left: 30px;" Text="Encrypted Crypto Key"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" 
                        style="position: absolute; top: 68px; left: 190px; width: 180px"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        style="position: absolute; top: 68px; left: 388px;">Get Decrypted Key</asp:LinkButton>
                    <asp:Label ID="Label4" runat="server" 
                        style="position: absolute; top: 115px; left: 30px;" Text="Decrypted Crypto Key"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Names="Century Schoolbook" 
                        style="position: absolute; top: 115px; left: 190px; width: 180px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Font-Names="Lucida Bright" 
                        onclick="Button1_Click" 
                        style="position: absolute; top: 115px; left: 394px; " 
                        Text="Check" />
                    <asp:Button ID="btn1" runat="server" CausesValidation="false" 
                        Font-Names="Arial Narrow" Font-Size="16pt" ForeColor="Black" 
                        onclick="btn1_Click" 
                        style="position: absolute; top: 172px; left: 192px; height: 33px; width: 145px;" 
                        Text="DOWNLOAD" Visible="true" Font-Bold="True" />
                    <asp:Button ID="btnverify" runat="server" CausesValidation="false" 
                        Font-Names="Arial Narrow" Font-Size="16pt" ForeColor="Black" 
                        onclick="btnverify_Click" 
                        style="position: absolute; top: 172px; left: 370px; height: 34px; width: 128px;" 
                        Text="NEXT" Visible="true" Font-Bold="True" />
                </asp:Panel>
            </td>
        </tr>
    </table>
            <cc1:DropShadowExtender ID="DropShadowExtender1" runat="server" Opacity=".3" 
                    Radius="3" Rounded="true" TargetControlID="Panel1">
                </cc1:DropShadowExtender>
</asp:Content>

