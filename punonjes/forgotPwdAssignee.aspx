<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/punonjes/punonjes.Master" CodeBehind="forgotPwdAssignee.aspx.cs" Inherits="WebApplication1.punonjes.forgotPwdAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <table width="100%" style="background-color:Transparent; font-weight:bold; font-size:larger; color:Maroon;" >
    <tr>
    <td align="center" colspan="2">
    <br />
    <br />
            Keni Harruar Fjalëkalimin?<br /> 
            <br />
            Vendosni UserName dhe Email
    </td>
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
                Nuk mund të lihet bosh</td>
            
            
            
            
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
                     Nuk mund të lihet bosh apo e pavlefshme</td>
            
            
            
        </tr>
        
        <tr>
        
            <td align="right">
            <br />
            <br />
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />
            
            </td>
            
            <td align="left">
            <br />
            <br />
           
                <asp:Button ID="btnCancel" runat="server" Text="CANCEL" OnClick="btnCancel_Click" />
            </td>
            
        </tr>
        
        <tr>
                    <td>
                        <asp:HyperLink ID="hypChangepswd" runat="server" NavigateUrl="~/ChangePassword.aspx">Ndrysho fjalëkalim</asp:HyperLink>
                    </td>
        </tr>
        
    </table>

        <div>
        </div>
  </asp:Content>