<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="klient.Master"CodeBehind="newRequest.aspx.cs" Inherits="WebApplication1.klient.newRequest" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <table width="100%">
    
            
        <tr>
       
        
            <td align="center" colspan="2">
            
            
            
            
            
                
                                    <h2 style="color:Teal; text-decoration:underline"> KERKESE E RE</h2>
               
                     
            </td>
            
        </tr>
        
        
        
        <tr>
                <td align="center" colspan="2" style="font-weight:bold; font-size:14pt;">
               
                
                
                    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                   
                    &nbsp;<asp:Label ID="lblLtime" runat="server" Text=""></asp:Label>
                    <span style="color: #228B22; vertical-align: middle">
                    <br />
                    <br />
                    ZGJIDHNI KATEGORINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <br />
                    </td>
                    
        </tr>
        
        
        
        <tr>
                
        
           
            <td align="right" class="auto-style8">
                 <br />
                 <br />
            &nbsp;<br />
                 <br />
                 <br />
                 <br />
                
               
                
                    <asp:Label ID="lblDept" runat="server" Width="375px"  Font-Bold="True" ForeColor="ForestGreen" Font-Size="14pt" Text="ZGJIDHNI SHERBIMIN-" style="vertical-align: middle; text-align: left; margin-top: 0px;"></asp:Label>                     
            </td>
            
             <td class="auto-style11">        
                
                    <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="dsCategory" DataValueField="categories" style="font-size: 14pt; width: 200px; vertical-align: middle; text-align: center;" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    </asp:DropDownList>
                    
                    <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand=" Select categories FROM category " ></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                   
             </td>
            
        </tr>
        
        
        <tr>
                <td  align="right" class="auto-style9">
                
               
                
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style7">    
                    
                        <asp:DropDownList ID="ddlServ" runat="server" DataSourceID="dsServ" DataValueField="service" Height="30px" Width="121px" style="font-size: 14pt; width: 200px" OnSelectedIndexChanged="ddlServ_SelectedIndexChanged">
                    
                        </asp:DropDownList>
                    
                        <asp:SqlDataSource ID="dsServ" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand=" Select services.service FROM services WHERE (services.category = @categories) " >
                            <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCategory" Name="categories" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>


                  
     
                        
               </td>
        </tr>
        
        
        <tr>
        
           
            <td align="right" class="auto-style3" style="font-weight: bold; font-size: 14pt; color: #228B22; vertical-align: middle">
                
                SHKRUANI KERKESEN TUAJ</td>
               <td class="auto-style4"> 
                                  
                <asp:TextBox ID="txtRequest" runat="server" Font-Bold="true" Font-Size="15pt" TextMode="MultiLine" style="width: 280px" ></asp:TextBox>
                
                   Nuk mund te lihet bosh</td>
           
        </tr>
        
        <tr>
                <td align="right" class="auto-style10">
                    <b>PER SA PRODUKTE DO TE ZBATOHET KJO KERKESE<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  Height="16px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                
               
                    &nbsp;<br />
                    <br />
               
                    
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="floralwhite" BackColor="GREEN" Text="Dërgo" OnClick="btnSubmit_Click"  Height="36px" style="margin-top: 0px" CssClass="auto-style5" />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp; </b>
                
               
                </td>
                <td align="left" class="auto-style6">
                    
                    <br />
                    <br />
                    
                    <br />
              
                   &nbsp;
                                        
                   <asp:Button ID="btnCancel" runat="server"  Font-Bold="true" ForeColor="floralwhite" BackColor="GREEN" CausesValidation="false"  Text="Anullo" OnClick="btnCancel_Click"  Height="34px" Width="85px" CssClass="auto-style4" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    
                </td>
        </tr>
    </table>
        <div>
        </div>
  </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style8 {
            height: 162px;
            width: 518px;
        }
        .auto-style11 {
            width: 548px;
            height: 162px;
        }
    </style>
</asp:Content>
