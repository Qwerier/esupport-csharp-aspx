<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/punonjes/punonjes.Master" CodeBehind="changePswdAssignee.aspx.cs" Inherits="WebApplication1.punonjes.changePswdAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><table width="100%"   style="color:Maroon;" >
    <tr align="right">
        <td colspan="2" align="center">
            <br />
            <br />
            <h3>Ndrysho fjalekalimin!</h3>
            <br />
            <br />
        </td>
    </tr>
    
    
     <tr>
              <td align="right" valign="top" class="auto-style5" >
                  Fjalekalimi i Vjeter</td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtOldPwd" runat="server" Font-Bold="true"  TextMode="SingleLine" Width="150"   ></asp:TextBox>
                  </span>  
              </td>
       </tr>
       
    
       
        
        <tr>
              <td align="right" valign="top" class="auto-style5" >
                  Fjalekalimi i Ri</td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtNewpswd" runat="server"  TextMode="Password" Width="150"   ></asp:TextBox>
                  </span>  
              </td>
       </tr>
       
        
        
         <tr>
              <td align="right" valign="top" class="auto-style5" >
                  Rishkruaj</td>
              <td style="width: 325px; background-color:Transparent" align="left" valign="top" >
                  <span style="font-size: 10pt; color:Teal; font-family:Arial">  
                  <asp:TextBox ID="txtRpswd" runat="server"  TextMode="Password" Width="150"   ></asp:TextBox>
                  </span>  
              </td>
       </tr>
       
            
            
            
            
             <tr>
                            <td colspan="2"  align="center">
                
                             
                   
                            
                            <asp:Button ID="btnSubmit" runat="server" Text="Ndrysho" ForeColor="floralwhite" BackColor="Green" Font-Bold="true" Width="150px" OnClick="btnSubmit_Click" />
                            </td>
                        
            </tr>
           
        
    </table>


            
        <div>
        </div>
  </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style5 {
        font-size: 14pt;
        color: teal;
        vertical-align: middle;
        width: 486px;
        font-weight: bold;
        background-color: Transparent;
    }
</style>
</asp:Content>
