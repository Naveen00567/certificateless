<%@ Page Language="C#" MasterPageFile="~/TpaMaster.master" AutoEventWireup="true" CodeFile="tpadirectvermod.aspx.cs" Inherits="tpadirectvermod" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" Font-Underline="True" 
        Text="File Direct Verification"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        Font-Names="Arial Narrow" Text="Sample Content"></asp:Label>
    <br />
    <table style="width: 100%; height: 539px;">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" 
                    style="position: absolute; top: 620px; left: 226px; height: 453px; width: 467px;">
                    <asp:Image ID="Image1" runat="server" CssClass="imagesize" 
                        
                        style="position: absolute; top: 15px; left: 23px; height: 282px; width: 411px;" />
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#666666" 
                        BorderColor="Black" ForeColor="White" ontextchanged="TextBox2_TextChanged" 
                        style="position: absolute; top: 16px; left: 27px; height: 310px; width: 437px;" 
                        TextMode="MultiLine"></asp:TextBox>
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
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Verification" Font-Bold="True" Font-Names="Arial Narrow" 
                        Font-Size="Large" />
                </asp:Panel>
                    </td>
        </tr>
    </table>
</asp:Content>

