<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminOwnerDetail.aspx.cs" Inherits="AdminOwnerDetail" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td style="height: 575px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="Black" 
                    Text="Owner Details"></asp:Label>
                <br />
                <table class="style1">
                    <tr>
                        <td style="width: 345px; height: 501px;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Names="Bookman Old Style" Font-Size="16pt" Text="Select Owner Name:"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
&nbsp;<br />
                        <asp:DropDownList  style="position: absolute; top: 805px; left: 37px; height: 25px; width: 200px;" 
                                ID="DropDownList1" runat="server" Font-Bold="True" 
                                Font-Names="Baskerville Old Face" Font-Size="Large" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                                <asp:ListItem Text="--Select--" Value="--Select--" Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <cc1:DragPanelExtender ID="DropDownList1_DragPanelExtender" runat="server" 
                                DragHandleID="DropDownList1" Enabled="True" TargetControlID="DropDownList1">
                            </cc1:DragPanelExtender>
                            <br />
                            <br />
                        </td>
                        <td style="height: 501px">
                           
                            <table class="style1" style="font-size: large; height: 366px;">
                                <tr>
                                    <td style="width: 181px">
                                        <asp:Panel ID="Panel2" runat="server" BorderColor="Gray" BorderWidth="2" 
                                            style="position: absolute; top: 672px; left: 102px; height: 345px; width: 433px;" 
                                            Visible="false">
                                            <asp:Label ID="Label3" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 40px; left: 45px;" Text="Owner ID"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 40px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 40px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label6" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 93px; left: 45px;" Text="Owner Name"></asp:Label>
                                            <asp:Label ID="Label7" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 93px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label8" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 93px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label9" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 146px; left: 45px;" Text="Gender"></asp:Label>
                                            <asp:Label ID="Label10" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 146px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label11" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 146px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label13" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 199px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label14" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 199px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label15" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 202px; left: 44px;" Text="Mobile"></asp:Label>
                                            <asp:Label ID="Label16" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 252px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 252px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label18" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 250px; left: 44px; height: 24px;" 
                                                Text="Emailid"></asp:Label>
                                            <asp:Label ID="Label19" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 305px; left: 180px;" Text=":"></asp:Label>
                                            <asp:Label ID="Label20" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 305px; left: 240px;"></asp:Label>
                                            <asp:Label ID="Label21" runat="server" Font-Names="Rockwell" Font-Size="Large" 
                                                style="position: absolute; top: 304px; left: 49px;" Text="Date"></asp:Label>
                                            <br />
                                        </asp:Panel>
                                    </td>
                                </tr>
                                </table>
                           
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

