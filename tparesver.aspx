<%@ Page Language="C#" MasterPageFile="~/TpaMaster.master" AutoEventWireup="true" CodeFile="tparesver.aspx.cs" Inherits="tparesver" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" Font-Underline="False" 
        Text="Response for Cryptographic key"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large"></asp:Label>
    <br/>
    
    <table style="width: 100%">
        <tr>
            <td style="height: 336px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#b74848" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="1" 
                    ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="5" 
                    style="position: absolute; top: 624px; left: 78px; width: 750px; height: 269px;">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fid" HeaderText="File ID" />
                        <asp:BoundField DataField="ffilename" HeaderText="File Name" />
                        <asp:BoundField DataField="fext" HeaderText="File Type" />
                        <asp:BoundField DataField="fowner" HeaderText="File Owner" />
                        <asp:BoundField DataField="fverify" HeaderText="Verify Status" />
                        <asp:BoundField DataField="keyrequest" HeaderText="Key Request" />
                        <asp:BoundField DataField="fdownload" HeaderText="Download Status" />
                        <asp:HyperLinkField DataNavigateUrlFields="fid" 
                            DataNavigateUrlFormatString="tparesver1.aspx?ID={0}" HeaderText="View" 
                            Text="View" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#b74848" ForeColor="White" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

