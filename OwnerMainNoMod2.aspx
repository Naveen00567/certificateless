<%@ Page Language="C#" MasterPageFile="~/OwnerMaster.master" AutoEventWireup="true" CodeFile="OwnerMainNoMod2.aspx.cs" Inherits="OwnerMainNoMod2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table style="width: 94%">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel style="position:absolute; width: 808px;  top: 560px; left: 46px; height: 275px;" 
            ID="Panel3" runat="server" BorderWidth="2" BackColor="#D8D8D8">
            <asp:Label style="position:absolute; top: 2px; left: 13px; width: 229px;" ID="Label30" 
                runat="server" Text="File Download !" Font-Size="18" 
                ForeColor="#088A08"></asp:Label>
                <hr style="position:absolute; top: 50px" />
            <asp:Image style="position:absolute; top: 67px; left: 13px; height: 128px; width: 178px;" ID="Image3" 
                runat="server" ImageUrl="~/Cloud Images/images3.jpg" />
           <asp:Label style="position: absolute; top: 31px; left: 13px;" ID="Label31" 
                runat="server" Text="Cryptography Key : Retrive From Your Mail"></asp:Label>
              
              <asp:Label style="position: absolute; top: 76px; left: 208px;" ID="Label32" 
                runat="server" Text="Encrypted Key  :"></asp:Label> 
           <asp:TextBox style="position: absolute; top: 74px; left: 324px; width: 224px" ID="TextBox2" 
                runat="server"></asp:TextBox> 
           <asp:Button style="position: absolute; top: 71px; left: 570px; width: 100px" 
                ID="btncheck" runat="server" Text="Check" Font-Size="Small" 
                Font-Names="Book Antiqua" onclick="btncheck_Click" />
           <asp:Label style="position: absolute; top: 115px; left: 204px;" ID="Label33" 
                runat="server" Text="Decrypted Key : "></asp:Label>
           
            <asp:Button style="position: absolute; background-color: Transparent; background-image: url('Images/red1.jpg'); top: 197px; left: 322px; height: 31px; width: 134px;" 
                ID="btndownload" runat="server" Text="DOWNLOAD"
                CausesValidation="false" ForeColor="Black" Font-Size="14pt" 
                Font-Names="Arial Narrow" Enabled="false" onclick="btndownload_Click" 
                        Font-Bold="True" />
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="false" 
                        style="position: absolute; top: 113px; left: 326px; width: 221px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="25" 
                        ImageUrl="~/Cloud Images/close.jpg" onclick="ImageButton2_Click" 
                        style="position: absolute; top: 8px; left: 766px" Width="25" />
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" 
                        onclick="LinkButton2_Click" 
                        style="position: absolute; top: 11px; left: 678px; height: 17px;" 
                        ToolTip="Click ang Get Key">OFFLINE</asp:LinkButton>
         </asp:Panel>    
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
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

