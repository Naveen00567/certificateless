<%@ Page Language="C#" MasterPageFile="~/TpaMaster.master" AutoEventWireup="true" CodeFile="tparesver3.aspx.cs" Inherits="tparesver3" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 450px">
                <asp:Panel ID="Panel1" runat="server" 
                    style="position: absolute; top: 614px; left: 178px; height: 221px; width: 603px; margin-bottom: 0px;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                        Font-Names="Arial Narrow" Font-Size="20pt" Font-Underline="True" 
                        style="position: absolute; top: 20px; left: 185px;" Text="File Upload"></asp:Label>
                    <asp:Label ID="Label2" runat="server" 
                        style="position: absolute; top: 87px; left: 63px;" Text="Upload File"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" 
                        style="position:absolute; top: 87px; left: 185px; height: 21px; width: 344px;" />     
                    <asp:Button ID="btnupload" runat="server" CausesValidation="false" 
                        Font-Bold="True" Font-Names="Arial Narrow" Font-Size="16pt" ForeColor="Black" 
                        onclick="btnupload_Click" 
                        style="position: absolute; top: 151px; left: 185px; height: 34px; width: 130px;" 
                        Text="UPLOAD" Visible="true" />
                    <asp:Button ID="btnfinish" runat="server" CausesValidation="false" 
                        Enabled="false" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="16pt" 
                        ForeColor="Black" 
                        style="position: absolute; top: 150px; left: 356px; height: 34px; width: 130px;" 
                        Text="FINISH" Visible="true" onclick="btnfinish_Click" />
                </asp:Panel>
    <cc1:DropShadowExtender ID="DropShadowExtender1" runat="server" Opacity=".3" TargetControlID="Panel1" Rounded="true" Radius="3">
    </cc1:DropShadowExtender>
    
  <%--  <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" 
            DropShadow="true" OkControlID="btnfinish"
            PopupControlID="Panel3" TargetControlID="btnfinish">
   </cc1:ModalPopupExtender> --%>
   
   
   

            </td>
        </tr>
   </table>
    
</asp:Content>

