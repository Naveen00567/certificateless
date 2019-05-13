<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminVerify.aspx.cs" Inherits="AdminVerify" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="Black" 
                    Text="Owner File No Modification:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="5px" Width="766px"></asp:TextBox>
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="#378c75" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="1" 
                                ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                                PageSize="5" 
                                style="position: absolute; top: 611px; left: 60px; width: 750px;">
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
                                        DataNavigateUrlFormatString="AdminTotalView.aspx?ID={0}" HeaderText="View" 
                                        Text="View" />
                                </Columns>
                                <FooterStyle BackColor="#2ed1cd" ForeColor="#4A3C8C" />
                                <PagerStyle BackColor="#378c75" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                <HeaderStyle BackColor="#157560" Font-Bold="True" ForeColor="#F7F7F7" />
                                <AlternatingRowStyle BackColor="#F7F7F7" />
                            </asp:GridView>
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
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

