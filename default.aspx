<%@ Page Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="startpage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 100%;
    }
    .style6
    {
        width: 388px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
    <tr>
        <td class="style6">
            <asp:Image ID="Image2" runat="server" Height="290px" 
                ImageUrl="~/Cloud Images/header_images.jpg" Width="393px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

