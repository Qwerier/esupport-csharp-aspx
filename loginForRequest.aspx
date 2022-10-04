<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginForRequest.aspx.cs" MasterPageFile="~/Master.Master" Inherits="WebApplication1.loginForRequest" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        <table width="100%">
    <tr>
        <td align="center" style="text-align:center; color:Teal; font-family:Monotype Corsiva; font-weight:bold; font-size:18pt">
        <br />
       
        
        <p>
            Për të hapur një <span class="auto-style1">ticket</span> ju duhet të regjistroheni fillimisht e më pas të log-oheni.<br />
            Nëse nuk jeni regjistruar ende, zgjidhni Përdorues i Ri.</p>
                 
        </td>
    </tr>
    <tr>
            <td align="center"> 
            <br />
            <br />
                <asp:HyperLink ID="hlLogin" Font-Bold="true" Font-Size="Large" runat="server" NavigateUrl="~/login.aspx">Login !</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" Font-Bold="True" Font-Size="Large" runat="server" NavigateUrl="~/createNewAccount.aspx">Perdorues i Ri? Regjistrohu!</asp:HyperLink>
             </td>
    </tr>
    
</table>
        <div>
        </div>
   
</asp:Content>