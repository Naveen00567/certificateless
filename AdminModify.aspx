<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminModify.aspx.cs" Inherits="AdminModify" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="16pt" ForeColor="Black" 
                    Text="Owner File Modification"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="16pt"></asp:Label>
                <br />
                <table class="style1" style="height: 308px">
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:GridView style="position: absolute; top: 618px; left: 54px; width: 794px;" 
         ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#378c75" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
        CellSpacing="1" ForeColor="Black" AllowPaging="True" PageSize="5" 
    onpageindexchanging="GridView1_PageIndexChanging" >
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
                DataNavigateUrlFormatString="AdminTotalView.aspx?ID={0}" />
        </Columns>
        <FooterStyle BackColor="#2ed1cd" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#378c75" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#157560" Font-Bold="True" ForeColor="#F7F7F7" />
         <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView> 
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
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

