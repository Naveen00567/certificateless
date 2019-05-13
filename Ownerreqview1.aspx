<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="Ownerreqview1.aspx.cs" Inherits="Ownerreqview1" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style10
        {
            width: 333px;
            height: 50px;
        }
        .style11
        {
            height: 50px;
        }
        .style12
        {
            width: 333px;
            height: 51px;
        }
        .style13
        {
            height: 51px;
        }
    </style>
    <table class="style8">
        <tr>
            <td align="center" colspan="2" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: solid; border-width: medium">
                <br />
                Request For Cryptographic Key(File View)<br />
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="File Id:"></asp:Label>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="File Name:"></asp:Label>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="File Subject"></asp:Label>
                :</td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="File Type"></asp:Label>
                :</td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="File Size"></asp:Label>
                :</td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
                :</td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Verify:"></asp:Label>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Cryptographic Key:"></asp:Label>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Download Status:"></asp:Label>
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Height="40px" Text="Sent" Width="95px" 
                    onclick="Button5_Click" />
            </td>
        </tr>
    </table>
        <asp:Label style="position:absolute; top: 597px; left: 425px;" ID="Label12" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>

        <asp:Label style="position:absolute; top: 647px; left: 424px; height: 21px;" ID="Label15" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>
        
        <asp:Label style="position:absolute; top: 701px; left: 421px;" ID="Label18" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>
        
        <asp:Label style="position:absolute; top: 748px; left: 420px;" ID="Label21" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>
        
        <asp:Label style="position:absolute; top: 800px; left: 421px;" ID="Label24" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>
        
        <asp:Label style="position:absolute; top: 853px; left: 421px;" ID="Label27" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="false"></asp:Label>
        
        <asp:Label style="position:absolute; top: 898px; left: 422px;" ID="Label30" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="true"></asp:Label>
        
        <asp:Label style="position:absolute; top: 957px; left: 423px;" ID="Label33" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="true"></asp:Label>
        
        <asp:Label style="position:absolute; top: 1008px; left: 424px; height: 24px; width: 430px;" ID="Label36" 
        runat="server" Font-Size="14" Font-Names="Bell MT" Font-Bold="true"></asp:Label>
        
                      
        
</asp:Content>

