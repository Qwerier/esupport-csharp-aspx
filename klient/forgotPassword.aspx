<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="klient.Master"CodeBehind="forgotPasword.aspx.cs" Inherits="WebApplication1.klient.forgotPassword" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="100%" style="background-color:Transparent; font-weight:bold; font-size:larger; color:Green;" >
    <tr>
    <td align="center" colspan="2">
    <br />
    <br />
            Keni Harruar Fjalekalimin?<br /> 
            <br /> 
            <br />
            <br />
        
        Vendosni ketu email dhe UserName</td>
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
           
                <asp:Button ID="btnCancel" runat="server" Text="Anullo" OnClick="btnCancel_Click" />
            </td>
            
        </tr>
        
        <tr>
                    <td>
                        <asp:HyperLink ID="hypChangepswd" runat="server" NavigateUrl="~/changePassword.aspx">Ndrysho Fjalekalim?</asp:HyperLink>
                    </td>
        </tr>
        
    </table>


</asp:Content>