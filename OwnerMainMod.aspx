<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerMainMod.aspx.cs" Inherits="ownermainmod" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <style type="text/css">
           .style8
        {
            width: 99%;
            height: 434px;
        }
        .style9
        {
            height: 164px;
            width: 590px;
        }
        .style10
        {
            height: 13px;
            width: 590px;
        }
    </style>
    <table class="style8" align="left">
        <tr>
            <td class="style10" align="left" 
                style="border-style: solid; border-width: medium; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" 
                    Text="Download Verification File - Modification"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="style9">
                <asp:GridView style="position: absolute; top: 681px; left: 88px; width: 725px; height: 267px;" 
        ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" AllowPaging="True" PageSize="5" 
    onpageindexchanging="GridView1_PageIndexChanging" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <RowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="fid" HeaderText="File ID" />
            <asp:BoundField DataField="ffilename" HeaderText="File Name" />
            <asp:BoundField DataField="fext" HeaderText="File Type" />
            <asp:BoundField DataField="fdatetime" HeaderText="Date" />
            <asp:BoundField DataField="fverify" HeaderText="Verify Status" />
            <asp:BoundField DataField="keyrequest" HeaderText="Key Request" />
            <asp:BoundField DataField="fdownload" HeaderText="Download Status" />
            <asp:HyperLinkField HeaderText="View" Text="View" DataNavigateUrlFields="fid" 
                DataNavigateUrlFormatString="OwnerMainMod1.aspx?ID={0}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView><br />
                
                    
     
            </td>            
        </tr>
    </table>
</asp:Content>

