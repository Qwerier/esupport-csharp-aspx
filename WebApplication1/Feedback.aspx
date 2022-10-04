<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" MasterPageFile="~/Master.Master" Inherits="WebApplication1.Feedback" %>

  <%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <p>

<table class="auto-style1">
    
        <tr align="center" >
        
            <td align="center"colspan="2" style="color:Purple; font-weight:bold; text-decoration:underline; font-size: 20px;">
            
               
                
                
                
                <h2 class="auto-style1">   &nbsp; JEPNI FEEDBACK TUAJ!</h2>
                <br />
                   
                
            </td>
           
        </tr>
       
        
        <tr>
       
           <td align="center" colspan="2" style="color:Blue; font-size:14pt; font-weight:bold;">
           <p> 
                &nbsp;</p>
           <br />
           
           </td> 
               
        </tr>
        
        
        <tr align="center">
                    
            <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                                EMRI </td>
            
            <td align="left" style="height: 26px">          
            <asp:TextBox ID="txtFname" runat="server" MaxLength="40"></asp:TextBox>
                Nuk Mund Te Lihet Bosh</td>  
        </tr>
    
        
        <tr align="center">
        
                <td align="right" style="width: 480px;" class="auto-style2">
                                  MBIEMRI</td>
                <td align="left" style="height: 26px">
                    <asp:TextBox ID="txtLname" runat="server" MaxLength="40"></asp:TextBox>
                    Nuk Mund Te Lihet Bosh</td>
           </tr>
        
        <tr align="center">
        
                    <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                        USER NAME
                    </td>
                    <td align="left" style="height: 26px">
                        <asp:TextBox ID="txtUname" MaxLength="40" runat="server"></asp:TextBox>
                        
                        Nuk Mund Te Lihet Bosh</td>
           </tr>
        
        
        
         <tr align="center">
        
                <td align="right" style="color:Teal; font-size:15pt; width: 480px;">
                                  KOMENTE
                </td>
                <td align="left">
                    <asp:TextBox ID="txtComments" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                    Nuk mund te Lihet Bosh.</td>
          </tr>
       
        <tr>
        
                    <td align="right" style="width: 480px">
                    <br />
                    
                    <asp:Button ID="btnSubmitfeedback" runat="server" AccessKey="F" Text="DERGO" OnClick="btnSubmitfeedback_Click" Font-Names="Bodoni MT Black" ForeColor="floralWhite" BackColor="Green" Width="150px"/>
                        
                    
        
                    </td>
            
               
                    <td align="left">
                    <br />
                   
                        
                         <asp:Button ID="btnCancel" runat="server" Text="CANCEL" CausesValidation="false" Width="126px" OnClick="btnCancel_Click" Font-Names="Bodoni MT Black" BackColor="Green" ForeColor="FloralWhite" />
                        
                    </td>
            
        </tr>
        
    </table>

        <div>
        </div>
      
          <br />
      </p>
      
   </asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            color: green;
        }
        .auto-style2 {
            font-size: 15pt;
            color: teal;
        }
    </style>
</asp:Content>




