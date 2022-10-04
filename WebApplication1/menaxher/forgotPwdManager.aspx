<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="forgotPwdManager.aspx.cs" Inherits="WebApplication1.menaxher.forgotPwdManager" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       
      <style type="text/css">


        .auto-style2 {
            height: 206px;
        }
    </style>
    <title> Haruuat fjalekalimin</title>
    </head>
    <body>
      <form id="form1" runat="server">
                <table  width="100%" class="auto-style2" >
                    <tr align="center">
                        <td align="center" style="z-index: 100; left: 0px; vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; height: 40px;">SMART IT
                            
                            <asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
                                <items>
                                    <asp:MenuItem Text="Shto dokument"  Value="Shto" NavigateUrl="~/menaxher/new_file.aspx"></asp:MenuItem>

                                    <asp:MenuItem Text="Kërkesë e Re"  Value="New Request" NavigateUrl="~/menaxher/requestArrivedForManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="New Password" NavigateUrl="~/menaxher/changePswdManager.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Harruat fjalëkalimin"  Value="Forgot Password" NavigateUrl="~/menaxher/forgotPwdManager.aspx"></asp:MenuItem>
                                  <asp:MenuItem  Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                                </items>
                            </asp:Menu>
                       
                    </td>
                    </tr>
                    <tr>
                        <td align="center" >
                            &nbsp;</table>
      <div>
 <table width="100%" style="background-color:Transparent; font-weight:bold; font-size:larger; color:Maroon;" >
    <tr>
    <td align="center" colspan="2">
    <br />
    <br />
            Keni Harruar Fjalekalimin?<br /> 
            <br /> 
            <br />
            <br />
        
        Vendosni ketu Username dhe Email tuaj</td>
    </tr>
    
        <tr>
        
        
            <td align="right">
            <br />
            <br />
            
                <asp:Label ID="lblUnamelogin" runat="server" Text="UserName"></asp:Label>
                
            </td>
            
            <td align="left">
            <br />
            <br />
            
                <asp:TextBox ID="txtUnamelogin" runat="server"></asp:TextBox>
                Nuk mund te lihet bosh</td>
            
            
            
            
        </tr>
        
        <tr>
        
            <td align="right">
            <br />
            <br />
            
                <asp:Label ID="lblEmail" runat="server" Text="Email_Address"></asp:Label>
                
                
            </td>
            
            <td align="left">
            <br />
            <br />
            
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                     Nuk mund te lihet bosh</td>
            
            
            
        </tr>
        
        <tr>
        
            <td align="right">
            <br />
            <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Dergo" OnClick="btnSubmit_Click" />
            
            </td>
            
            <td align="left">
            <br />
            <br />
           
                <asp:Button ID="btnCancel" runat="server" Text="Mbyll" OnClick="btnCancel_Click" />
            </td>
            
        </tr>
        
        <tr>
                    <td>
                        <asp:HyperLink ID="hypChangepswd" runat="server" NavigateUrl="~/ChangePassword.aspx">Ndrysho fjalekalim</asp:HyperLink>
                    </td>
        </tr>
        
    </table>

        </div>
  
      </form>
        </body>
    </html>

