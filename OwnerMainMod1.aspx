<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerMainMod1.aspx.cs" Inherits="OwnerMainMod1" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <style type="text/css">
        .style8
        {
            width: 100%;
            height: 97px;
        }
        .style9
     {
         width: 100%;
     }
     .style10
     {
     }
     .style11
     {
         width: 282px;
     }
    </style>
    <table class="style8">
    <tr>
            <td align="left" colspan="2" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; border-style: solid; border-width: medium">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" 
                    Text="Download Verification files - (Full View)"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    Font-Names="Arial Rounded MT Bold"></asp:Label>
                <table class="style9">
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="File ID :"></asp:Label>
                        </td>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="File Name  :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="File Subject :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label16" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="File Type :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="File Size :"></asp:Label>
                            &nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="Date :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="Verify :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label19" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="Key Request :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Text="Modify Status :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label21" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow" Font-Size="X-Large" Text="Download" 
                                CausesValidation="False" onclick="Button1_Click" />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
     <%--   <cc1:modalpopupextender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" 
            DropShadow="true" OkControlID="Button1"
            PopupControlID="Panel3" TargetControlID="Button1">
        </cc1:modalpopupextender>
    
       <asp:Panel style="position:absolute; width: 544px;  top: 597px; left: 174px; height: 198px;" 
            ID="Panel3" runat="server" BorderWidth="2" BackColor="#D8D8D8">
            <asp:Label style="position:absolute; top: 2px; left: 13px; width: 229px;" ID="Label30" 
                runat="server" Text="File Download !" Font-Size="18" 
                ForeColor="#088A08"></asp:Label>
                <hr style="position:absolute; top: 43px; left: -2px;" />
            <asp:Image style="position:absolute; top: 67px; left: 13px; height: 120px; width: 107px;" ID="Image3" 
                runat="server" ImageUrl="~/Cloud Images/images3.jpg" />
           <asp:Label style="position: absolute; top: 31px; left: 13px;" ID="Label31" 
                runat="server" Text="Cryptography Key : Retrive From Your Mail"></asp:Label>
            <asp:ImageButton style="position: absolute; top: 9px; left: 503px" 
                ID="ImageButton2" runat="server" ImageUrl="~/Cloud Images/close.jpg" Height="25" 
                Width="25" onclick="ImageButton2_Click"/>
              
              <asp:Label style="position: absolute; top: 67px; left: 130px;" ID="Label32" 
                runat="server" Text="Encrypted Key  :"></asp:Label> 
           <asp:TextBox style="position: absolute; top: 67px; left: 236px; width: 180px" ID="TextBox2" 
                runat="server"></asp:TextBox> 
           <asp:Button style="position: absolute; top: 64px; left: 434px; width: 100px; height: 27px;" 
                ID="Button2" runat="server" Text="Check" Font-Size="Small" 
                Font-Names="Book Antiqua" onclick="Button2_Click" />
           <asp:Label style="position: absolute; top: 110px; left: 130px;" ID="Label33" 
                runat="server" Text="Decrypted Key : "></asp:Label>
           <asp:TextBox style="position: absolute; top: 110px; left: 236px; width: 180px" ID="TextBox3" 
                runat="server" Enabled="false"></asp:TextBox>
           
            <asp:Button style="position: absolute;  top: 152px; left: 236px; height: 31px; width: 134px;" 
                ID="btndownload" runat="server" Text="DOWNLOAD"
                CausesValidation="false" ForeColor="#000000" Font-Size="14pt" 
                Font-Names="Arial Narrow" Enabled="false" onclick="btndownload_Click" 
                Font-Bold="True" />
            <asp:LinkButton ID="LinkButton2" runat="server" 
                style="position: absolute; top: 15px; left: 440px; height: 17px;" 
                Font-Size="Small" ToolTip="Click ang Get Key" onclick="LinkButton2_Click">OFFLINE</asp:LinkButton>
         </asp:Panel>   --%>
</asp:Content>

