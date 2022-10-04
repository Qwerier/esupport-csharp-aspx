<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="klient.Master" CodeBehind="changePassword.aspx.cs" Inherits="WebApplication1.klient.changePassword" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%" style="color:Maroon;" >
    <tr>
        <td colspan="2">
           
            <h2 style="vertical-align: middle; text-align: center">Ndrysho fjalekalimin</h2>
            <br />
            <br />
           
        </td>
    </tr>
    
    
     <tr>
              <td align="right" valign="top" class="auto-style4">
                
                                
                  Fjalekalim i Vjeter</td>
              
              <td>
             
              
                  
                  <asp:TextBox ID="txtOldPwd" runat="server"  TextMode="Password" style="vertical-align: middle; text-align:left;" Width="138px" OnTextChanged="txtOldPwd_TextChanged"></asp:TextBox>
                  
                  
                  
                  <asp:RequiredFieldValidator ID="rvfOldPwd" ControlToValidate="txtOldPwd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>
                  
              </td>
      </tr>
       
    
       
        
        <tr>
              <td align="right" valign="top" class="auto-style6">
                  
                  Fjalekalim i Ri</td>
              
              <td>
                   
                  <asp:TextBox ID="txtNewpswd" runat="server"  TextMode="Password"></asp:TextBox>
                 
                  <asp:RequiredFieldValidator ID="rqfvNewpswd" ControlToValidate="txtNewPswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>
              </td>
       </tr>
       
        
        
         <tr>
              <td align="right" valign="top" class="auto-style4">
                  
                  Rishkruaj fjalekalimin</td>
              
              <td>
                  
                <asp:TextBox ID="txtRpswd" runat="server"  TextMode="Password"></asp:TextBox>
                
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtRpswd" runat="server" ErrorMessage="Enter old password."></asp:RequiredFieldValidator>  
              </td>
        </tr>
       
            
            
            
            
             <tr>
                            <td colspan="2"  align="center">
                            <br />
                            <br />
                            
                
                             
                   
                            
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" Text="Ndrysho Fjalekalim" ForeColor="floralWhite" BackColor="Green" Width="182px" OnClick="btnSubmit_Click" />
                            </td>
                        
            </tr>
           
        
    </table>

        <div>
        </div>
  
        </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            font-size: 14pt;
            color: teal;
            vertical-align: middle;
            width: 600px;
            font-weight: bold;
        }
        .auto-style6 {
            font-size: 14pt;
            color: teal;
            vertical-align: top;
            width: 600px;
            font-weight: bold;
        }
    </style>
</asp:Content>


