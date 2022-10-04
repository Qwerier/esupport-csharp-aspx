<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePswdManager.aspx.cs" Inherits="WebApplication1.menaxher.changePswdManager" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <style type="text/css">
        .auto-style3 {
            height: 155px;
        }
        .auto-style5 {
            font-size: 14pt;
            color: teal;
            vertical-align: middle;
            width: 486px;
            font-weight: bold;
            background-color: Transparent;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: 14pt;
            color: teal;
            vertical-align: middle;
        }
    
        .auto-style2 {
            height: 206px;
        }
    </style>
    <title> Ndrysho fjalëkalimin</title>
</head>
    <body>

   

        <form id="form1" runat="server">

   

      <table width="100%"   style="color:Maroon;" >
    <tr align="right">
        <td colspan="2" align="center" class="auto-style3">
            <br />
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
            <h3>Ndrysho Fjalekalim!</h3>
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
              <td style="width: 486px; background-color:Transparent" align="right" valign="top" >
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rishkruaj Fjalëkalimin</span></td>
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
        </form>
    </body>    
            
       
      </html>


