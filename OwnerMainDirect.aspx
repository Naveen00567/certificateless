<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerMainDirect.aspx.cs" Inherits="OwnerMainDirect" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <br />
       <br />
       <style type="text/css">
           .style8
        {
            width: 100%;
            height: 372px;
        }
        </style>&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label4" runat="server" Font-Bold="True" 
           Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" 
           Text="Direct Verification File"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label5" runat="server" Font-Bold="True" 
           Font-Names="Arial Rounded MT Bold" Font-Size="X-Large"></asp:Label>
    <br />
    <table align="center" class="style8">
        <tr>
            <td align="center" 
                
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: solid; border-width: medium">
                <br />
                Direct Verification File<br />
                <br />
                <asp:GridView style="position: absolute; top: 620px; left: 71px; width: 610px; height: 250px;" 
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
                DataNavigateUrlFormatString="OwnerMainDirect1.aspx?ID={0}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>

