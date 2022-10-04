<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seeAssignee.aspx.cs" Inherits="WebApplication1.admin.seeAssignee" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Punonjesit</title>
      
            <style type="text/css">

                .auto-style2 {
                    height: 206px;
                }
                .auto-style3 {
                    height: 195px;
                }
            </style>
</head>
    <body>

   <form id="form2" runat="server">
        <table width="100%"  style="color:Maroon;" class="auto-style3" >
            <tr align="right">
        <td align="center">
   
   
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
             <tr>
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
        

        <table width="100%"  style="color:Maroon;" >
            <tr align="right">
        

        <td align="center">
        <h3 style="text-decoration:underline; color:Teal;">&nbsp;&nbsp; Lista e Punonjesve</h3>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAssignee" runat="server" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen" CellPadding="4" CellSpacing="1" AllowPaging="true" PageSize="5" AllowSorting="true"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
                <Columns><asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="LastName"></asp:BoundField>
                        <asp:BoundField DataField="Department" SortExpression="Department" HeaderText="Department" ></asp:BoundField>
                        <asp:BoundField DataField="Password" SortExpression="Password" HeaderText="Password" ></asp:BoundField>
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM assigneeLogin" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
        
  </form>
        </body>
    </html>
