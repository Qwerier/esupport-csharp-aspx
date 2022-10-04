<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addService.aspx.cs" Inherits="WebApplication1.admin.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
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
                &nbsp;</td>
                             
           </tr>
           <tr align="center">
            <td>
         
                                 
                &nbsp;</td>
                     
               
            </tr>
            
        
        </table>
        
        
     
    <table width="100%">
            
            <tr align="center">
                 <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">Shto shërbim</h3>
                                  <p style="text-decoration:underline; color:Teal;">&nbsp;</p>
                                    
                                    
                        </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label runat="server" ID="lblNewCat" ForeColor="chocolate" Font-Bold="true" Font-Size="14pt" Text="Shto shërbim"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNewServ" TextMode="SingleLine" MaxLength="20" OnTextChanged="txtNewServ_TextChanged" ></asp:TextBox>
                    <br />
                    <span class="auto-style2">Cmimi
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    Zgjidh kategori&nbsp; 
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categories" DataValueField="categories">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OHDConn %>" SelectCommand="SELECT [categories] FROM [category]"></asp:SqlDataSource>
                    <br />
                      
                    
                    Shto imazh<asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <p> 
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Button runat="server" id="btnAdd" ForeColor="floralwhite" BackColor="crimson" Text="Shto shërbim" OnClick="btnAdd_Click" />
                </td>
            </tr>
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 class="auto-style1">Lista e shërbimeve </h3>
                                    
                                    
                        </td>
            </tr>
            
    <tr>
        
        <td align="center">
            <asp:GridView ID="gvService" BorderStyle="Solid" BorderColor="black" CellSpacing="4"  runat="server" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" ForeColor="Maroon" PageIndex="0" HorizontalAlign="NotSet">
                <Columns><asp:HyperLinkField     DataNavigateUrlFields="service" DataNavigateUrlFormatString="deleteService.aspx?service={0}" Text="Fshi"   />
                        <asp:BoundField DataField="service" SortExpression="service" HeaderText="service"></asp:BoundField>
                        
                 </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" SelectCommand="SELECT service FROM [services] order by service" ConnectionString="<%$ ConnectionStrings:OHDConnectionString1 %>" ProviderName="<%$ ConnectionStrings:OHDConnectionString1.ProviderName %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>
        <div>
        </div>
  
   
        <div>
        </div>
    </form>
</body>
</html>
