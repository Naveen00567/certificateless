<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerFileUpload.aspx.cs" Inherits="OwnerFileUpload" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <table class="style16">
            <tr>
                <td class="style17">
                    <asp:Panel ID="Panel1" runat="server" 
                        style="position: absolute; top: 572px; left: 89px; height: 264px; width: 475px; margin-top: 0px;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                            Font-Names="Arial Narrow" style="position:absolute; top: 40px; left: 65px;" 
                            Text="File ID : "></asp:Label>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                            Font-Names="Arial Narrow" style="position:absolute; top: 40px; left: 140px;"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                            Font-Names="Arial Narrow" style="position:absolute; top: 100px; left: 60px;" 
                            Text="Subject : "></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Names="Bookman Old Style" 
                            style="position:absolute; top: 102px; left: 140px; width: 190px"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                            Font-Names="Arial Narrow" style="position:absolute; top: 160px; left: 35px;" 
                            Text="Upload File : "></asp:Label>
<%--       <cc1:AsyncFileUpload style="position:absolute; top: 140px; left: 140px;" 
        UploaderStyle="Traditional" ID="AsyncFileUpload1" Width="270px"
        runat="server" BackColor="#EBF3EB"
          OnClientUploadComplete="showConfirmation"
            CompleteBackColor="#92E297"
             UploadingBackColor="#EFE8BB"
               ThrobberID="Image2" ToolTip="Click to UPload File" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload 
                            ID="FileUpload1" runat="server" 
                            style="position:absolute; top: 160px; left: 140px; height: 22px; width: 291px;" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" 
                            Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" 
                            onclick="Button1_Click" Text="Upload" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Font-Bold="True" 
                            Font-Italic="False" Font-Names="Verdana" Font-Size="Medium" 
                            onclick="Button2_Click" Text="clear" />
                    </asp:Panel>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#666666" Font-Size="18" 
                        ForeColor="White" 
                        style="position: absolute; top: 571px; left: 644px; width: 200px; height: 272px;" 
                        TextMode="MultiLine" Visible="false"></asp:TextBox>
                </td>
            </tr>
        </table>
        <style type="text/css">
            .style16
            {
                width: 100%;
                height: 357px;
            }
            .style17
            {
                width: 577px;
            }
    </style>
    </asp:Content>

