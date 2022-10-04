<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs"Inherits="WebApplication1.admin.addCategory" %>
    
   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kategori e Re</title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: 14pt;
            color: #D2691E;
        }
        .auto-style2 {
            color: teal;
            text-decoration: underline;
        }
    </style>
    </head>
    <body>
    <form id="form1" runat="server">
        <table  width="100%" >
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
            <asp:Menu ID="Menu1" BorderWidth="1" BackColor=Ivory ForeColor="#cc3366" Font-Bold="true"  Font-Underline="true" Font-Size="14pt" Orientation="horizontal" Width="100%" Height="40px" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            
            <items>
            
            
                  
                <asp:MenuItem Text="Shiko të gjithë klientët"  Value="SEE ALL USER'S" NavigateUrl="~/admin/AllUsers.aspx"></asp:MenuItem>
             <asp:MenuItem Text="Shiko të gjithë menaxhert"  Value="See Manager" NavigateUrl="~/admin/seeManager.aspx"></asp:MenuItem>             
                <asp:MenuItem Text="Shiko të gjithë punonjësit"  Value="See Assignee's" NavigateUrl="~/admin/seeAssignee.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto shërbim të Ri" Value="Add New service" NavigateUrl="~/admin/addService.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Shto kategori të Re" Value="Add New Category" NavigateUrl="~/admin/addCategory.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shto departament të Ri" Value="Add New Department" NavigateUrl="~/admin/addDepartment.aspx"></asp:MenuItem>
                  <asp:MenuItem Text="Shiko Feedback e Klientit" Value="View User FeedBaack" NavigateUrl="~/admin/FeedbackForm.aspx"></asp:MenuItem>
                  
                 
                  
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
                 <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Shto kategori te Re</h3>
                                    
                                    
                        </td>
            </tr>
            <tr>
                <td align="center">
                    <span class="auto-style1">Kategori e Re</span><asp:TextBox runat="server" ID="txtNewCategory" TextMode="SingleLine" MaxLength="20" ></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Button runat="server" id="btnAdd" ForeColor="floralwhite" BackColor="DarkViolet" Text="Shto Kategori" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 class="auto-style2">Kategorite aktuale jane:</h3>
                                    
                                    
                        </td>
            </tr>
            
    <tr>
        
        <td align="center">
            <asp:GridView ID="gvCategory" BorderStyle="Solid" BorderColor="black" CellSpacing="4"  runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns><asp:HyperLinkField     DataNavigateUrlFields="categories" DataNavigateUrlFormatString="deleteCategory.aspx?categories={0}" Text="Delete"   />
                        <asp:BoundField DataField="categories" SortExpression="categories" HeaderText="Category"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [category] order by categories" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>
        <div>
        </div>
 </form>
    </body>
    </html>