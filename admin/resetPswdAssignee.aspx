<%@ Page Language="C#" AutoEventWireup="true" "CodeBehind="resetPswdAssignee.aspx.cs" Inherits="WebApplication1.admin.resetPswdAssignee" %>>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ndrysho fjalekalimin </title>
      
            <style type="text/css">
                .auto-style3 {
                    height: 244px;
                }
                .auto-style2 {
                    height: 206px;
                }
            </style>
</head>
    <body>

        <table width="100%"  style="color:Maroon;" >
            <tr align="right">
        <td colspan="2" align="center">
    <form id="form1" runat="server" class="auto-style3">
   
        <table  width="100%" class="auto-style2" >
        <tr align="center">
                
                    <td align="center" style="z-index: 100; left: 0px; vertical-align: middle; font-size:xx-large;
                                line-height: normal; letter-spacing: normal; background-color:navy; color:White;
                                text-align: center; text-decoration: underline; border-left-color:navy; border-bottom-color:navy; border-top-style: solid; border-top-color:navy; border-right-style: solid; border-left-style: solid; border-right-color: Maroon; border-bottom-style: solid; height: 40px;"> SMART IT
                            
                    </td>
         </tr>
        
            
            
           
          <tr>
            <td align="center" >
            <asp:Menu ID="AdminMenu" BorderWidth="2" BackColor="#330033" ForeColor="#ffffff"  Font-Underline="true" Font-Size="Medium" Orientation="Horizontal" Width="100%" Height="40px" runat="server">
            
            <items>
            
            
                  <asp:MenuItem Text="Krijo Punonjës"  Value="Create New Assignee" NavigateUrl="~/admin/createAssignee.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Krijo Menaxher"  Value="Create New Manager" NavigateUrl="~/admin/createManager.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Ndrysho fjalëkalimin"  Value="Change Password" NavigateUrl="~/admin/changePswdAdmin.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Mbërriti kërkesë e Re" Value="New Request Arrived" NavigateUrl="~/admin/requestArrivedForAdmin.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Klienti" Value="Request For Forgot Password " NavigateUrl="~/admin/reqForpswd.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Menaxheri" Value="Assignee : Request For Forgot Password" NavigateUrl="~/admin/reqForPwdManager.aspx"></asp:MenuItem>
                                  <asp:MenuItem Text="Kërkesë për Fjalëkalim nga Punonjësi" Value="Assignee : Request For Forgot Password" NavigateUrl="~/admin/reqForPwdAssignee.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Cështje e zgjidhur" Value="Processed Request" NavigateUrl="~/admin/processedQuery.aspx" ></asp:MenuItem>
                  <asp:MenuItem Text="Email" Value="email" NavigateUrl="~/admin/view_email.aspx" ></asp:MenuItem>
                 
                 
                  <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/logOut.aspx" ></asp:MenuItem>
                
            </items>
            
            </asp:Menu>
            </td>
                  
                
            
            
            </tr>
             <tr >
            <td>
            <asp:Menu ID="Menu1" BorderWidth="1" BackColor=Ivory ForeColor="#cc3366" Font-Bold="true"  Font-Underline="true" Font-Size="14pt" Orientation="horizontal" Width="100%" Height="40px" runat="server">
            
            <items>
            
            
                   <asp:MenuItem Text="Shiko të gjithë klientët"  Value="SEE ALL USER'S" NavigateUrl="~/admin/AllUsers.aspx"></asp:MenuItem>
             <asp:MenuItem Text="Shiko të gjithë menaxhert"  Value="See Manager" NavigateUrl="~/admin/seeManager.aspx"></asp:MenuItem>             
                <asp:MenuItem Text="Shiko të gjithë punonjësit"  Value="See Assignee's" NavigateUrl="~/admin/seeAssignee.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto shërbim të Ri" Value="Add New service" NavigateUrl="~/admin/addService.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Shto kategori të Re" Value="Add New Category" NavigateUrl="~/admin/addCategory.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto departament të Ri" Value="Add New Department" NavigateUrl="~/admin/addDepartment.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shiko Feedback e Klientit" Value="View User FeedBaack" NavigateUrl="~/admin/feedbackForm.aspx"></asp:MenuItem>
                  
                 
                  
            </items>
            
            </asp:Menu>
            
            </td>
                             
           </tr>
           <tr align="center">
            <td>
         
                                 
                &nbsp;</td>
           
            </tr>
            
         
        </table>
        

<table width="100%">
    <tr align="center">
        <td align="center" >
                    <h3>Detaje te punonjesit qe ka harruar fjalekalimin</h3>
        </td>
    </tr>
        <tr>
        
                <td align="center">
                    <asp:Label ID="lblFname" runat="server" Text="FIRSTNAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                  
                    <asp:Label ID="lblFname1" runat="server" ></asp:Label>
               
                    
                </td>
            
        </tr>
        
        <tr>
       <td  align="center">
                    <asp:Label ID="lblLastname" runat="server" Text="LAST NAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                   
                    <asp:Label ID="lblLname1" runat="server" ></asp:Label>
                    
                </td>
       </tr>
        
        
        
        
        <tr>
        
        <td  align="center">
                    <asp:Label ID="lblUname" runat="server" Text="USER-NAME :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
               
                    <asp:Label ID="lblUname1" runat="server" ></asp:Label>
               
                    
                </td>
        </tr>
        
        
        <tr>
        
        <td  align="center">
                    <asp:Label ID="lblEmail" runat="server" Text="EMAIL-ID :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                 
                    
               
                    <asp:Label ID="lblEmail1"  runat="server" Text=""></asp:Label>
                </td>
        </tr>
        
        
        
        
         <tr>
        
        <td  align="center">
                    <asp:Label ID="lblDept" runat="server" Text="DEPARTMENT :" Width="200px" style="vertical-align: middle; text-align: left"></asp:Label>
                  
               
                    <asp:Label ID="lblDeptname" runat="server"></asp:Label>
                </td>
        </tr>
        
        
      
         <tr>
            <td  align="center">
                    <asp:Label ID="lblPswd" runat="server" Text="NEW PASSWORD :" Width="142px" style="vertical-align: middle; text-align: left; width: 150px;"></asp:Label>
                   
                
                    <asp:TextBox ID="txtNewpswd" runat="server" TextMode="singleLine"></asp:TextBox>
                </td>
        </tr>
        
        
        
        <tr>
                        <td align="center">
                            <asp:Button ID="btnReset" runat="server" Text="Reset Password" OnClick="btnReset_Click"/>
                        </td>
        </tr>
    </table>
     </form>
   </body>
    </html>
