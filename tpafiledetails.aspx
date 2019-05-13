<%@ Page Language="C#" MasterPageFile="~/TpaMaster.master" AutoEventWireup="true" CodeFile="tpafiledetails.aspx.cs" Inherits="tpafiledetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <style type="text/css">
        .style22
        {
            height: 42px;
        }
        .style24
        {
            height: 107px;
        }
        .style25
        {
            height: 6px;
        }
        </style>
    <table class="style8" style="height: 542px; width: 98%; margin-bottom: 0px;">
        <tr>
            <td align="left" class="style22" 
                
                
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" Text="File Details"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: outset; border-width: medium" 
                class="style25">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; File Types:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="180px" 
                    Font-Bold="False">
                    <asp:ListItem>All Files</asp:ListItem>
                    <asp:ListItem>.html</asp:ListItem>
                    <asp:ListItem>.jpg</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        
        
        
        
        
        
        
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: outset; border-width: medium" 
                class="style24">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                    PageSize="5" style="position: absolute; top: 777px; left: 74px; width: 750px;">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fid" HeaderText="File ID" />
                        <asp:BoundField DataField="ffilename" HeaderText="File Name" />
                        <asp:BoundField DataField="fsubject" HeaderText="File Subject" />
                        <asp:BoundField DataField="fext" HeaderText="File Type" />
                        <asp:BoundField DataField="fowner" HeaderText="File Owner" />
                        <asp:BoundField DataField="fdatetime" HeaderText="Date" />
                        <asp:BoundField DataField="fverify" HeaderText="Verify Status" />
                        <asp:HyperLinkField DataNavigateUrlFields="fid" 
                            DataNavigateUrlFormatString="tpafiledetfullview.aspx?ID={0}" HeaderText="View" 
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

