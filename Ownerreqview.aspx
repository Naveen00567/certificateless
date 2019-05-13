<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="Ownerreqview.aspx.cs" Inherits="Ownerreqview" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            height: 401px;
        }
        .style9
        {
            height: 69px;
        }
    </style>
    <table class="style8">
        <tr>
            <td align="center" class="style9" 
                
                
                style="font-family: 'Arial Rounded MT Bold'; font-size: xx-large; font-weight: bold; border-style: solid; border-width: medium">
                Request for cryptographic key<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="#0066FF"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: solid; border-width: medium">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                    style="position: absolute; top: 623px; left: 48px; height: 284px;">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fid" HeaderText="File ID" />
                        <asp:BoundField DataField="ffilename" HeaderText="File Name" />
                        <asp:BoundField DataField="fext" HeaderText="File Type" />
                        <asp:BoundField DataField="fdatetime" HeaderText="Date" />
                        <asp:BoundField DataField="fverify" HeaderText="Verify Status" />
                        <asp:BoundField DataField="keyrequest" HeaderText="Key Request" />
                        <asp:BoundField DataField="fdownload" HeaderText="Download Status" />
                        <asp:HyperLinkField DataNavigateUrlFields="fid" 
                            DataNavigateUrlFormatString="Ownerreqview1.aspx?ID={0}" HeaderText="View" 
                            Text="View" />
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




