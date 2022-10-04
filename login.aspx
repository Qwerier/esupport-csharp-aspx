<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/Master.Master"Inherits="WebApplication1.login" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table width="100%">
    
        <tr>
        
            <td align="center" style="text-align:center; text-decoration:underline; font-size:16pt; font-weight:bold; font-family:Arial;">
                   
                       <h2 style="text-decoration:underline; color:Green;"> LOGIN </h2>
                        
                    
            </td>
     
        
        </tr>
        
        <tr>
                    <td align="center">
                        <p class="auto-style3" >                    
                           
                            Të gjithë përdoruesit e regjistruar mund të log-ohen këtu.</p>    
                    </td>
        </tr>
        
        
        
        
        
        
        <tr>
        <td align="center" style=" font-size:12pt; color:Teal;" >
                <br />
                <br />
                <span class="auto-style1">LOGIN SI </span>
                
                        
            
            
            
                <asp:DropDownList ID="ddlUser" runat="server"  Font-Bold="true" Font-Size="12pt" ForeColor="Maroon">
                <asp:ListItem Text="Klient" Value="Klient"></asp:ListItem>
                <asp:ListItem Text="Administrator" Value="Administrator"></asp:ListItem>
                <asp:ListItem Text="Menaxher" Value="Menaxher"></asp:ListItem>
                      <asp:ListItem Text="Punonjës" Value="Punonjës"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                      
        </td>
        
        
        </tr>
        
       
        
        
        
        <tr>
        
                    
            <td align="center" style=" font-size:14pt; color:Teal;">
            
                    
                    <asp:Label ID="lblUname" runat="server" Text="USER NAME" Font-Bold="true"></asp:Label>  
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    Nuk mund te lihet bosh</td>
           
        </tr>
    
        
        <tr>
        
            <td align="center" style=" font-size:14pt; color:Teal;">
                              
                <span class="auto-style2">Fjalekalimi</span><asp:TextBox ID="txtPswd" TextMode="Password" runat="server"></asp:TextBox><br />
                Nuk mund te lihet bosh</td>
            
        </tr>
        
        <tr>
        
            <td  align="center">
           
            
            
                <asp:Button ID="btnSubmit" Font-Bold="true" Font-Size="Medium" BackColor="DarkViolet" AccessKey="L" ForeColor="FloralWhite" runat="server" Text="LOGIN" OnClick="btnSubmit_Click" Width="120px"/>
                <br />
               
                
                    
                <a href="forgotPwdCommon.aspx"><font size="3">Harruat FjalëKalimin?</font></a></td>
            
        </tr>
       
    </table>

        <div>
        </div>
   </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: 14pt;
        }
        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: 15pt;
            color: blue;
        }
    </style>
</asp:Content>
