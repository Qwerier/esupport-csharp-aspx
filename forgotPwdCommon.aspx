<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master"CodeBehind="forgotPwdCommon.aspx.cs" Inherits="WebApplication1.forgotPwdCommon" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <table width="100%">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: 14pt;
        }
    </style>

    <table  width="100%">
    
        <tr>
        
            <td align="center" style="text-align:center; text-decoration:underline; font-size:16pt; font-weight:bold; font-family:Arial;">
                   
                       <h2 style="text-decoration:underline; color:Green;"> &nbsp;</h2>
                        
                    
            </td>
     
        
        </tr>
        
       
        <tr>
        <td align="center" style=" font-size:12pt; color:Teal;" >
                <br />
                <br />
                <span class="auto-style1">LOGIN SI</span><asp:DropDownList ID="ddlUser" runat="server"  Font-Bold="true" Font-Size="12pt" ForeColor="Maroon">
                <asp:ListItem Text="Klient" Value="Klient"></asp:ListItem>
                <asp:ListItem Text="Menaxher" Value="Menaxher"></asp:ListItem>
                    <asp:ListItem Text="Punonjes" Value="Punonjes"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                      
        </td>
        
        
        </tr>
        
       
        
        
        
        <tr>
        
                    
            <td align="center" style=" font-size:14pt; color:Teal;">
            
                    
                    <asp:Label ID="lblUname" runat="server" Width="150px" Text="User Name" Font-Bold="true" style="vertical-align: middle; text-align: left"></asp:Label>  
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    Nuk mund te lihet bosh<br />
                            
                   <asp:Label ID="lblEmail" runat="server" Width="150px" Text="Email address" Font-Bold="true" style="vertical-align: middle; text-align: left"></asp:Label>  
                   <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                    Nuk mund te lihet bosh</td>
           
        </tr>
    
        
        
        
        <tr>
        
            <td  align="center" style="width: 1070px">
           
            
            
                <asp:Button ID="btnSubmit" Font-Bold="true" ForeColor="floralWhite" BackColor="DarkViolet" Font-Size="Medium"  AccessKey="L"  runat="server" Text="Submit"  Width="120px" OnClick="btnSubmit_Click"/>
                <br />
                <br />
                
                    
                
            </td>
            
        </tr>
       </table>
      
        </asp:Content>
   
