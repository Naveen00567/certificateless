<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerFilesView.aspx.cs" Inherits="OwnerFilesView" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            height: 647px;
        }
        .style10
        {
            width: 300px;
            height: 55px;
        }
        .style24
        {
            width: 300px;
            height: 50px;
        }
        .style25
        {
            height: 50px;
        }
        .style26
        {
            width: 178px;
            height: 50px;
        }
    </style>
    <table class="style8">
        <tr>
            <td align="center" class="style10" colspan="2" 
                
                style="font-family: 'Arial Rounded MT Bold'; font-size: x-large; font-weight: bold; border-style: solid; border-width: medium">
                <br />
&nbsp;&nbsp; File Details</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Text="File Id"></asp:Label>
                :<br />
            </td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label12" runat="server" 
                    Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Text="File Name"></asp:Label>
                :<br />
            </td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Text="File Subject"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Text="File Type"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label7" runat="server" Text="File Size"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
            </td>
        </tr>
        <tr style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <br />
                <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <br />
                <asp:Label ID="Label9" runat="server" Text="Verify"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <br />
                <asp:Label ID="Label10" runat="server" Text="Key Request"></asp:Label>
                :
            </td>
            <td class="style24" 
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style26" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter">
                <asp:Label ID="Label11" runat="server" Text="Metadata"></asp:Label>
                :</td>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style25" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: lighter" 
                colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%-- <asp:Panel style="position:absolute; width: 544px;  top: 328px; left: 143px; height: 198px;" 
            ID="Panel3" runat="server" BorderWidth="2" BackColor="#D8D8D8">
            <asp:Label style="position:absolute; top: 2px; left: 13px; width: 229px;" ID="Label30" 
                runat="server" Text="File Download !" Font-Size="18" 
                ForeColor="#088A08"></asp:Label>
                <hr style="position:absolute; top: 50px" />
            <asp:Image style="position:absolute; top: 67px; left: 13px; height: 120px; width: 107px;" ID="Image3" 
                runat="server" ImageUrl="~/Cloud Images/images3.jpg" />
           <asp:Label style="position: absolute; top: 31px; left: 13px;" ID="Label31" 
                runat="server" Text="Cryptography Key : Retrive From Your Mail"></asp:Label>
            <asp:ImageButton style="position: absolute; top: 9px; left: 503px" 
                ID="ImageButton2" runat="server" ImageUrl="~/Cloud Images/close.jpg" Height="25" 
                Width="25" onclick="ImageButton2_Click"/>
              
              <asp:Label style="position: absolute; top: 67px; left: 130px;" ID="Label32" 
                runat="server" Text="Encrypted Key  :"></asp:Label> 
           <asp:TextBox style="position: absolute; top: 67px; left: 252px; width: 180px" ID="TextBox2" 
                runat="server"></asp:TextBox> 
           <asp:Button style="position: absolute; top: 64px; left: 439px; width: 100px" 
                ID="btncheck" runat="server" Text="Check" Font-Size="Small" 
                Font-Names="Book Antiqua" onclick="btncheck_Click" />
           <asp:Label style="position: absolute; top: 110px; left: 130px;" ID="Label33" 
                runat="server" Text="Decrypted Key : "></asp:Label>
           <asp:TextBox style="position: absolute; top: 109px; left: 253px; width: 180px" ID="TextBox3" 
                runat="server" Enabled="false"></asp:TextBox>
           
            <asp:Button style="position: absolute; background-color: Transparent; background-image: url('Images/red1.jpg'); top: 152px; left: 236px; height: 31px; width: 134px;" 
                ID="btndownload" runat="server" Text="DOWNLOAD"
                CausesValidation="false" ForeColor="Black" Font-Size="14pt" 
                Font-Names="Arial Narrow" Enabled="false" onclick="btndownload_Click" 
                        Font-Bold="True" />
            <asp:LinkButton ID="LinkButton2" runat="server" 
                style="position: absolute; top: 12px; left: 440px; height: 17px;" 
                Font-Size="Small" ToolTip="Click ang Get Key" onclick="LinkButton2_Click">OFFLINE</asp:LinkButton>
         </asp:Panel> --%>    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Font-Bold="True" 
                    Font-Names="Arial Narrow" Font-Size="X-Large" onclick="Button6_Click" 
                    Text="Download" CausesValidation="False" />
              <%--  <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" 
            DropShadow="true" OkControlID="Button6"
            PopupControlID="Panel3" TargetControlID="Button6">
                </cc1:ModalPopupExtender> --%>
                         
            </td>
        </tr>
         </table>
</asp:Content>

