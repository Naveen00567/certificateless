<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerMainNoMod.aspx.cs" Inherits="OwnerMainNoMod" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:Label ID="Label4" runat="server" Font-Bold="True" 
           Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" 
           Text="Direct Verification File - No Modification"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label5" runat="server" Font-Bold="True" 
           Font-Names="Arial Rounded MT Bold" Font-Size="X-Large"></asp:Label>
    <br />
    <br />
    <table style="width: 100%; height: 299px">
        <tr>
            <td style="height: 305px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="5" 
                    style="position: absolute; top: 614px; left: 83px; width: 750px; margin-top: 0px;">
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
                            DataNavigateUrlFormatString="OwnerMainNoMod1.aspx?ID={0}" HeaderText="View" 
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

        </table>
</asp:Content>

